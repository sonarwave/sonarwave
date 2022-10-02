import 'package:flutter/material.dart';
import 'package:sonarwave/utils/components/components.dart';
import 'package:sonarwave/utils/enums/enums.dart';
import 'package:sonarwave/utils/models/user/user.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar(this.user, {Key? key}) : super(key: key);

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
    return AssetIcon(
      _getUrl(),
      height: 30.0,
      width: 30.0,
      color: Theme.of(context).colorScheme.onSurface,
    );
  }
}
