import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:sonarwave/configs/theme/theme.dart';
import 'package:sonarwave/utils/components/components.dart';
import 'package:sonarwave/utils/models/file/file.dart';
import 'package:sonarwave/utils/models/user/user.dart';

class FileTransferRequestDialog extends AlertDialog {
  const FileTransferRequestDialog({
    required this.user,
    required this.file,
    required this.onAccept,
    required this.onDeny,
    super.key,
  });

  final User user;
  final FileItem file;
  final VoidCallback onAccept;
  final VoidCallback onDeny;

  @override
  Color? get backgroundColor => AppColors.defaultScheme.background;

  @override
  Widget? get content => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ContentTop(user),
          const Padding(padding: EdgeInsets.all(10.0)),
          _ContentMiddle(file),
          const Padding(padding: EdgeInsets.all(10.0)),
          _ContentBottom(user),
        ],
      );

  @override
  List<Widget>? get actions => [
        _Deny(onDeny),
        _Accept(onAccept),
      ];
}

class _ContentTop extends StatelessWidget {
  const _ContentTop(this.user, {super.key});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: CustomAvatar(user),
    );
  }
}

class _ContentMiddle extends StatelessWidget {
  const _ContentMiddle(this.file, {super.key});

  final FileItem file;

  String _getBytesInFormat() {
    String output;
    if(file.size >= 1000.0) {
      output = "${(file.size / 1000).toStringAsFixed(1)} Gb";
    } else if(file.size >= 1.0) {
      output = "${file.size.toStringAsFixed(1)} Mb";
    } else {
      if((file.size * 1000) > 1.0) {
        output = "${(file.size * 1000).toStringAsFixed(1)} Kb";
      } else {
        output = "${(file.size * 1000 * 1000).toStringAsFixed(1)} Bytes";
      }
    }

    return output;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(file.name),
        Text(_getBytesInFormat()),
      ],
    );
  }
}

class _ContentBottom extends StatelessWidget {
  const _ContentBottom(this.user, {super.key});

  final User user;

  @override
  Widget build(BuildContext context) {
    return EasyRichText(
      "Are you should you want to accept this file by Guest ${user.displayName}?",
      patternList: [
        EasyRichTextPattern(
          targetString: "Are you should you want to accept this file by",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        EasyRichTextPattern(
          targetString: "Guest ${user.displayName}",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}

class _Accept extends StatelessWidget {
  const _Accept(this.onPressed, {super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      onPressed: onPressed,
      child: Text(
        'ACCEPT',
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}

class _Deny extends StatelessWidget {
  const _Deny(this.onPressed, {super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      onPressed: onPressed,
      child: Text(
        'DENY',
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
