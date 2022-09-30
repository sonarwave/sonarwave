import 'dart:async';

import 'package:cure/signalr.dart';
import 'package:flutter/material.dart';
import 'package:sonarwave/utils/enums/enums.dart';
import 'package:sonarwave/utils/extensions/extensions.dart';
import 'package:sonarwave/utils/helpers/helpers.dart';
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

  void Function(User)? onUserJoinedRoom;
  void Function(User?)? onUserLeftRoom;

  Future<void> connectAsync() async {
    await _connection.startAsync();
    notifyListeners();
  }

  Future<void> disconnectAsync() async {
    await _connection.stopAsync();
    notifyListeners();
  }

  Future<void> joinRoomAsync({String roomId = ""}) async {
    _state = AppState.inProgress;
    notifyListeners();

    try {
      dynamic result = await _connection.invokeAsync("JoinRoomAsync", [roomId]);
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
      _exception = Exception("Something unexpected occured.");
    }

    notifyListeners();
  }

  Future<void> leaveRoomAsync() async {
    await _connection.invokeAsync("LeaveRoomAsync");
    notifyListeners();
  }

  void initRoom() {
    _onUserJoinedRoom();
    _onUserLeftRoom();
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
}
