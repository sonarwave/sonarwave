import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sonarwave/configs/router/router.dart';
import 'package:sonarwave/utils/components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: _Form(),
      ),
    );
  }
}

class _Form extends StatelessWidget {
  const _Form({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        _RoomIdInputField(),
        Padding(padding: EdgeInsets.all(5.0)),
        _ConnectButton(),
        Padding(padding: EdgeInsets.all(15.0)),
        _OrLine(),
        Padding(padding: EdgeInsets.all(15.0)),
        _CreateRoomButton(),
      ],
    );
  }
}

class _RoomIdInputField extends StatelessWidget {
  const _RoomIdInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      hintText: "Room ID",
    );
  }
}

class _ConnectButton extends StatelessWidget {
  const _ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: "Connect",
      onpressed: () {},
    );
  }
}

class _OrLine extends StatelessWidget {
  const _OrLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: Row(
        children: [
          const Expanded(child: CustomLine()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "OR",
              style: TextStyle(
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          ),
          const Expanded(child: CustomLine()),
        ],
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: "Create Room",
      onpressed: () {
        GetIt.instance.get<AppRouter>().push(const RoomRoute());
      },
    );
  }
}
