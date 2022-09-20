import 'package:flutter/foundation.dart';
import 'package:sonarwave/enums/enums.dart';
import 'package:universal_io/io.dart';

class PlatformInfo {
  PlatformInfo() {
    _platform = _getPlatform();
  }

  late final PlatformType _platform;
  PlatformType get platform => _platform;

  PlatformType _getPlatform() {
    if (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
      return PlatformType.phone;
    } else if (!kIsWeb &&
        (Platform.isLinux || Platform.isMacOS || Platform.isWindows)) {
      return PlatformType.desktop;
    } else {
      return PlatformType.web;
    }
  }
}
