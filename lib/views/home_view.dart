import 'package:flutter/material.dart';
import 'package:sonarwave/components/components.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001600),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          margin: const EdgeInsets.all(30),
          child: const Radar(
            radarRange: 10.0,
          ),
        ),
      ),
    );
  }
}
