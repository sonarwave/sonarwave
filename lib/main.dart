import 'package:flutter/material.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:sonarwave/my_app.dart';
import 'package:sonarwave/providers/hub_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final String? ipAddress = await NetworkInfo().getWifiIP();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HubProvider(ipAddress),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
