import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:sonarwave/configs/router/router.dart';
import 'package:sonarwave/features/room/components/file_transfer_request.dialog.dart';
import 'package:sonarwave/utils/components/components.dart';
import 'package:sonarwave/utils/enums/enums.dart';
import 'package:sonarwave/utils/extensions/extensions.dart';
import 'package:sonarwave/utils/models/file/file.dart';
import 'package:sonarwave/utils/models/user/user.dart';
import 'package:sonarwave/utils/providers/providers.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  late final HubProvider _hub;
  void _onUserJoinedRoom(User user) {
    context.replaceSnackBar(
        content: Text("Guest: ${user.displayName} joined!"));
  }

  void _onUserLeftRoom(User user) {
    context.replaceSnackBar(
        content: Text("Guest: ${user.displayName} has left!"));
  }

  void _onFileTransferRequest(FileItem file) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: const Color(0xFF600018).withOpacity(0.5),
      builder: (BuildContext context) {
        return FileTransferRequestDialog(
          file: file,
          onAccept: () {
            _hub.sendFileTransferRespondAsync(
              UpdateFileRequest(
                id: file.id,
                acceptance: TransferAcceptance.accepted,
              ),
            );
            Navigator.of(context).pop();
          },
          onDeny: () {
            _hub.sendFileTransferRespondAsync(
              UpdateFileRequest(
                id: file.id,
                acceptance: TransferAcceptance.denied,
              ),
            );
            Navigator.of(context).pop();
          },
        );
      },
    );
  }

  void _onFileTransferRespond(FileItem file) {
    if (file.acceptance == TransferAcceptance.denied) {
      context.replaceSnackBar(
          content: Text("Permission to transfer ${file.name} was denied."));
    } else {
      context.replaceSnackBar(
        snackBar: SnackBar(
          duration: const Duration(days: 1),
          content: Text("Transfering ${file.name}"),
        ),
      );
    }
  }

  void _onFileTransferingFinished(FileItem file) {
    context.replaceSnackBar(
        content: Text("Successfully transferred ${file.name}"));
  }

  void _onFileReceiving(FileItem file) {
    context.replaceSnackBar(
      snackBar: SnackBar(
        duration: const Duration(days: 1),
        content: Text("Downloading ${file.name}"),
      ),
    );
  }

  void _onFileReceivingFinished(FileItem file) {
    context.replaceSnackBar(
        content: Text("Successfully downloaded ${file.name}"));
  }

  @override
  void initState() {
    super.initState();
    _hub = context.read<HubProvider>();
    _hub.initRoom();
    _hub.onUserJoinedRoom = _onUserJoinedRoom;
    _hub.onUserLeftRoom = _onUserLeftRoom;
    _hub.onFileTransferRequest = _onFileTransferRequest;
    _hub.onFileTransferRespond = _onFileTransferRespond;
    _hub.onFileReceiving = _onFileReceiving;
    _hub.onFileReceivingFinished = _onFileReceivingFinished;
    _hub.onFileTransferFinished = _onFileTransferingFinished;
  }

  @override
  void dispose() {
    _hub.leaveRoomAsync();
    _hub.disposeRoom();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            _TopSection(),
            _MiddleSection(),
            _BottomSection(),
          ],
        ),
      ),
    );
  }
}

class _TopSection extends StatelessWidget {
  const _TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    final length = context.watch<HubProvider>().users.length;
    return length >= 1
        ? Container(
            alignment: Alignment.center,
            height: 100.0,
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: length,
              itemBuilder: (BuildContext context, int index) {
                return _ListItemBuilder(
                  context.read<HubProvider>().users.elementAt(index),
                );
              },
            ),
          )
        : SizedBox.fromSize(
            size: const Size(double.infinity, 0),
          );
  }
}

class _ListItemBuilder extends StatelessWidget {
  const _ListItemBuilder(this.user, {super.key});

  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FilePicker.platform
            .pickFiles(
          allowMultiple: false,
        )
            .then(
          (value) {
            if (value != null) {
              var file = value.files.first;
              var request = CreateFileRequest(
                name: file.name,
                path: file.path!,
                extension: file.extension!,
                recipientId: user.connectionId,
                size: file.size / 1000 / 1000,
              );
              context.read<HubProvider>().sendFileTransferRequestAsync(request);
            }
          },
        );
      },
      child: CustomAvatar(user),
    );
  }
}

class _MiddleSection extends StatelessWidget {
  const _MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 180.0,
      width: 180.0,
      child: Radar(
        radarRange: 10.0,
      ),
    );
  }
}

class _BottomSection extends StatelessWidget {
  const _BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        _DisplayName(),
        Padding(padding: EdgeInsets.all(5.0)),
        _CopyButton(),
        Padding(padding: EdgeInsets.all(5.0)),
        _LeaveButton(),
      ],
    );
  }
}

class _DisplayName extends StatelessWidget {
  const _DisplayName({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = context.read<HubProvider>().user;
    return EasyRichText(
      "Display Name | Guest ${user.displayName}",
      patternList: [
        EasyRichTextPattern(
          targetString: 'Display Name |',
          style: TextStyle(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        EasyRichTextPattern(
          targetString: "Guest ${user.displayName}",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onBackground,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}

class _CopyButton extends StatelessWidget {
  const _CopyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: "Room ID",
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      trailingIcon: Container(
        alignment: Alignment.centerRight,
        child: const AssetIcon(
          "assets/svgs/copy.svg",
          width: 20.0,
        ),
      ),
      onpressed: () async {
        await Clipboard.setData(
          ClipboardData(
            text: context.read<HubProvider>().room.id,
          ),
        ).then(
          (_) =>
              context.replaceSnackBar(content: const Text("Room ID copied.")),
        );
      },
    );
  }
}

class _LeaveButton extends StatelessWidget {
  const _LeaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: "Leave Room",
      onpressed: () {
        context.read<HubProvider>().leaveRoomAsync();
        GetIt.instance.get<AppRouter>().replace(const HomeRoute());
      },
    );
  }
}
