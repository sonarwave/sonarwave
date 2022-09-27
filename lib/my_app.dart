import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:sonarwave/configs/router/router.dart';
import 'package:sonarwave/configs/theme/theme.dart';
import 'package:sonarwave/utils/providers/providers.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final AppRouter _appRouter = GetIt.instance.get<AppRouter>();
  final AudioPlayer _audioPlayer = AudioPlayer()
    ..setReleaseMode(ReleaseMode.stop)
    ..setVolume(0.1);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _audioPlayer.play(AssetSource("sounds/radar-ping.mp3"));
    context.read<HubProvider>().connectAsync();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    context.read<HubProvider>().disconnectAsync();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.defaultTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
