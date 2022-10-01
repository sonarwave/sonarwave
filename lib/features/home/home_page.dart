import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:sonarwave/configs/router/router.dart';
import 'package:sonarwave/features/home/providers/home_provider.dart';
import 'package:sonarwave/utils/components/asset_icon.dart';
import 'package:sonarwave/utils/components/components.dart';
import 'package:sonarwave/utils/enums/enums.dart';
import 'package:sonarwave/utils/providers/hub_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HubProvider _hub;
  void _listener() {
    switch (_hub.state) {
      case AppState.initial:
        return;
      case AppState.inProgress:
        {
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                dismissDirection: DismissDirection.none,
                content: Text("Loading..."),
              ),
            );
          break;
        }
      case AppState.success:
        {
          ScaffoldMessenger.of(context).clearSnackBars();
          GetIt.instance.get<AppRouter>().replace(const RoomRoute());
          break;
        }
      default:
        {
          {
            ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  dismissDirection: DismissDirection.none,
                  content: Text(_hub.exception.toString()),
                ),
              );
            break;
          }
        }
    }
  }

  @override
  void initState() {
    super.initState();
    _hub = context.read<HubProvider>();
    _hub.addListener(_listener);
  }

  @override
  void dispose() {
    _hub.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            _TopSection(),
            _MiddleSection(),
            _BottomSection(),
          ],
        ),
      ),
    );
  }
}

class _TopSection extends StatelessWidget {
  const _TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: AssetIcon(
        "assets/svgs/sonarwave.svg",
        width: 150.0,
        color: Theme.of(context).colorScheme.onBackground,
      ),
    );
  }
}

class _MiddleSection extends StatelessWidget {
  const _MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
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
    return CustomTextField(
      hintText: "Room ID",
      controller: context.read<HomeProvider>().roomIdInputController,
    );
  }
}

class _ConnectButton extends StatelessWidget {
  const _ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: "Connect",
      onpressed: () {
        var input =
            context.read<HomeProvider>().roomIdInputController.text.toString();
        if (input.isEmpty) return;

        context.read<HubProvider>().joinRoomAsync(roomId: input);
      },
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
      onpressed: () => context.read<HubProvider>().joinRoomAsync(),
    );
  }
}

class _BottomSection extends StatelessWidget {
  const _BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyRichText(
      "Built By Waad Sulaiman | Source",
      patternList: [
        EasyRichTextPattern(
          targetString: 'Built By |',
          style: TextStyle(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        EasyRichTextPattern(
          targetString: 'Waad Sulaiman',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onBackground,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () async => _launchUrl("https://github.com/WaadSulaiman"),
        ),
        EasyRichTextPattern(
          targetString: 'Source',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onBackground,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () async => _launchUrl("https://github.com/sonarwave"),
        ),
      ],
    );
  }
}

Future<void> _launchUrl(String url) async {
  final Uri? uri = Uri.tryParse(url);
  if (uri == null) return;
  if (!await launchUrl(uri)) {
    throw 'Could not launch $url';
  }
}
