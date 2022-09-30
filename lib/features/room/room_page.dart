import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sonarwave/utils/components/components.dart';
import 'package:sonarwave/utils/enums/enums.dart';
import 'package:sonarwave/utils/models/user/user.dart';
import 'package:sonarwave/utils/providers/hub_provider.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  void _onUserJoinedRoom(User user) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            "Guest: ${user.displayName} joined!",
          ),
        ),
      );
  }

  void _onUserLeftRoom(User? user) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          dismissDirection: DismissDirection.none,
          content: Text("Guest: ${user?.displayName} has left!"),
        ),
      );
  }

  @override
  void initState() {
    super.initState();
    final hub = context.read<HubProvider>();
    hub.initRoom();
    hub.onUserJoinedRoom = _onUserJoinedRoom;
    hub.onUserLeftRoom = _onUserLeftRoom;
  }

  @override
  void dispose() {
    context.read<HubProvider>().leaveRoomAsync();
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
    return CircleAvatar(
      backgroundColor: const Color(0xFF600018).withOpacity(0.5),
      radius: 60.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _PlatformTypeImage(user.platformType),
          const Padding(padding: EdgeInsets.all(4.0)),
          Text(
            "Guest ${user.displayName}",
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}

class _PlatformTypeImage extends StatelessWidget {
  const _PlatformTypeImage(this.platformType, {super.key});

  final PlatformType platformType;

  String _getUrl() {
    switch (platformType) {
      case PlatformType.desktop:
        return "assets/svgs/desktop.svg";
      case PlatformType.web:
        return "assets/svgs/web.svg";
      case PlatformType.phone:
        return "assets/svgs/phone.svg";
      default:
        return "assets/svgs/unknown.svg";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      _getUrl(),
      width: 30.0,
      height: 30.0,
      color: Theme.of(context).colorScheme.onSurface,
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
