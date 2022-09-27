import 'package:cure/signalr.dart';
import 'package:cure/signalr_message_pack.dart';
import 'package:flutter/material.dart';
import 'package:sonarwave/utils/extensions/extensions.dart';
import 'package:sonarwave/utils/helpers/helpers.dart';

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
      ..protocol = MessagePackHubProtocol()
      ..reconnect = true;

    _connection = builder.build();
  }

  final String _url = "https://localhost:7163/connectionhub";
  late final HubConnection _connection;

  Future connectAsync() async {
    await _connection.startAsync();
    notifyListeners();
  }

  Future disconnectAsync() async {
    await _connection.stopAsync();
    notifyListeners();
  }
}
