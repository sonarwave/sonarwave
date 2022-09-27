import 'package:flutter/material.dart';
import 'package:sonarwave/utils/components/components.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 200.0,
          width: 200.0,
          child: Radar(radarRange: 10.0),
        ),
      ),
    );
  }
}
