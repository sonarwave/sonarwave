import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:cure/signalr.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sonarwave/utils/enums/enums.dart';
import 'package:sonarwave/utils/extensions/extensions.dart';
import 'package:sonarwave/utils/helpers/helpers.dart';
import 'package:sonarwave/utils/models/file/file.dart';
import 'package:sonarwave/utils/models/response/response.dart';
import 'package:sonarwave/utils/models/room/room.dart';
import 'package:sonarwave/utils/models/user/user.dart';

class HubProvider with ChangeNotifier {
  HubProvider(String? ipAddress) {
    final HubConnectionBuilder builder = HubConnectionBuilder()
      ..url = _url
      ..logLevel = LogLevel.critical
      ..httpConnectionOptions = HttpConnectionOptions(
        headers: {
          "remote-ip-address": ipAddress ?? "",
          "platform-type": PlatformInfo().platform.name.capitalizeFirstLetter()
        },
      )
      ..reconnect = true;

    _connection = builder.build();
  }

  final String _url = "https://localhost:7163/connectionhub";
  late final HubConnection _connection;

  Exception? _exception;
  Exception? get exception => _exception;

  AppState _state = AppState.initial;
  AppState get state => _state;

  Room _room = Room();
  Room get room => _room;

  Iterable<User> get users => _room.users
      .where((element) => element.connectionId != _connection.connectionId);

  User get user => _room.users.firstWhere(
      (element) => element.connectionId == _connection.connectionId);

  final List<FileItem> _files = [];

  void Function(User)? onUserJoinedRoom;
  void Function(User)? onUserLeftRoom;
  void Function(FileItem)? onFileTransferRequest;
  void Function(FileItem)? onFileTransferRespond;
  void Function(FileItem)? onFileReceiving;
  void Function(FileItem)? onFileReceivingFinished;
  void Function(FileItem)? onFileTransferFinished;

  Future<void> connectAsync() async {
    try {
      await _connection.startAsync();
      notifyListeners();
    } catch (_) {}
  }

  Future<void> disconnectAsync() async {
    try {
      await _connection.stopAsync();
      notifyListeners();
    } catch (_) {}
  }

  Future<void> joinRoomAsync({String roomId = ""}) async {
    _state = AppState.inProgress;
    notifyListeners();

    try {
      var result = await _connection.invokeAsync("JoinRoomAsync", [roomId]);
      Response response = Response.fromJson(result);
      if (response.succeeded) {
        _state = AppState.success;
        _room = Room.fromJson(response.data);
      } else {
        _state = AppState.failure;
        _exception = Exception(response.message);
      }
    } catch (e) {
      _state = AppState.failure;
      _exception = Exception("Something unexpected occurred.");
    }
    notifyListeners();
    _state = AppState.initial;
  }

  Future<void> leaveRoomAsync() async {
    try {
      await _connection.invokeAsync("LeaveRoomAsync");
      notifyListeners();
    } catch (_) {}
  }

  Future<void> sendFileTransferRequestAsync(CreateFileRequest request) async {
    try {
      await _connection
          .invokeAsync("FileTransferRequestAsync", [request.toJson()]);
    } catch (_) {}
  }

  Future<void> sendFileTransferRespondAsync(UpdateFileRequest request) async {
    try {
      if (request.acceptance == TransferAcceptance.denied) {
        _files.removeWhere((element) => element.id == request.id);
      }
      await _connection
          .invokeAsync("FileTransferRespondAsync", [request.toJson()]);
    } catch (_) {}
  }

  Future<void> removeFileAsync(String fileId) async {
    try {
      await _connection.invokeAsync("RemoveFileAsync", [fileId]);
    } catch (_) {}
  }

  Future<void> transferFileAsync(FileItem file) async {
    try {
      var stream = File(file.path).openRead();
      Subject subject = Subject();
      stream.listen((event) {
        subject.next(event);
      }, onDone: () {
        onFileTransferFinished?.call(file);
        subject.complete();
      });
      await _connection.invokeAsync("TransferFileAsync", [file.id, subject]);
    } catch (_) {}
  }

  void initRoom() {
    _onUserJoinedRoom();
    _onUserLeftRoom();
    _onFileTransferRequest();
    _onFileTransferRespond();
    _onReceiveFile();
  }

  void _onUserJoinedRoom() {
    _connection.on("OnUserJoinedRoom", (args) {
      try {
        User user = User.fromJson(args.first);
        _room.users.add(user);
        onUserJoinedRoom?.call(user);
        notifyListeners();
      } catch (_) {}
    });
  }

  void _onUserLeftRoom() {
    _connection.on("OnUserLeftRoom", (args) {
      try {
        String connectionId = args.first;
        User user = _room.users
            .firstWhere((element) => element.connectionId == connectionId);
        _room.users.remove(user);
        onUserLeftRoom?.call(user);
        notifyListeners();
      } catch (_) {}
    });
  }

  void _onFileTransferRequest() {
    _connection.on("OnFileTransferRequest", (args) {
      try {
        FileItem file = FileItem.fromJson(args.first);
        _files.add(file);
        onFileTransferRequest?.call(file);
        notifyListeners();
      } catch (_) {}
    });
  }

  void _onFileTransferRespond() {
    _connection.on("OnFileTransferRespond", (args) {
      try {
        FileItem file = FileItem.fromJson(args.first);
        if (file.acceptance == TransferAcceptance.denied) {
          removeFileAsync(file.id);
        } else {
          transferFileAsync(file);
        }
        onFileTransferRespond?.call(file);
        notifyListeners();
      } catch (_) {}
    });
  }

  void _onReceiveFile() {
    String? currentFileId;
    _connection.on("OnReceiveFile", (args) {
      try {
        FileChunk chunk = FileChunk.fromJson(args.first);
        if (currentFileId == null) {
          currentFileId = chunk.fileId;
          FileItem file =
              _files.firstWhere((element) => element.id == chunk.fileId);
          onFileReceiving?.call(file);
        }
        if (currentFileId != chunk.fileId) {
          currentFileId = chunk.fileId;
          FileItem file =
              _files.firstWhere((element) => element.id == chunk.fileId);
          onFileReceiving?.call(file);
        }
        _addChunk(chunk);
        notifyListeners();
      } catch (_) {}
    });
  }

  void _addChunk(FileChunk chunk) {
    FileItem file = _files.firstWhere((element) => element.id == chunk.fileId);
    getDownloadsDirectory().then(
      (value) {
        if (value != null) {
          File newFile = File("${value.path}\\${file.id}.${file.extension}");
          if(newFile.existsSync()) {
            newFile.writeAsBytesSync(chunk.chunk, mode: FileMode.append);
          } else {
            newFile.writeAsBytesSync(chunk.chunk);
          }
          if (newFile.lengthSync() == (file.size * 1000 * 1000)) {
            onFileReceivingFinished?.call(file);
          }
        }
      },
    );
  }

  void disposeRoom() {
    _connection.off("OnUserJoinedRoom");
    _connection.off("OnUserLeftRoom");
    _connection.off("OnFileTransferRequest");
    _connection.off("OnFileTransferRespond");
    _connection.off("OnReceiveFile");
  }
}
