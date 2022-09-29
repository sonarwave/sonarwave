import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonarwave/utils/components/components.dart';
import 'package:sonarwave/utils/providers/hub_provider.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  void dispose() {
    context.read<HubProvider>().leaveRoomAsync();
    super.dispose();
  }

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
