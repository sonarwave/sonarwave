import 'package:flutter/material.dart';
import 'package:sonarwave/views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "SonarWave",
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
