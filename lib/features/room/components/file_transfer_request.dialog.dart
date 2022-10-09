import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

import 'package:sonarwave/utils/components/components.dart';
import 'package:sonarwave/utils/models/file/file.dart';

class FileTransferRequestDialog extends StatelessWidget {
  const FileTransferRequestDialog({
    required this.file,
    required this.onAccept,
    required this.onDeny,
    super.key,
  });

  final FileItem file;
  final VoidCallback onAccept;
  final VoidCallback onDeny;

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ContentTop(file),
            const Padding(padding: EdgeInsets.all(10.0)),
            _ContentMiddle(file),
            const Padding(padding: EdgeInsets.all(10.0)),
            _ContentBottom(
              onAccept: onAccept,
              onDeny: onDeny,
            ),
          ],
        ),
      ),
    );
  }
}

class _ContentTop extends StatelessWidget {
  const _ContentTop(
    this.file, {
    super.key,
  });

  final FileItem file;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: CustomAvatar(file.sender),
    );
  }
}

class _ContentMiddle extends StatelessWidget {
  const _ContentMiddle(
    this.file, {
    super.key,
  });

  final FileItem file;

  String _getBytesInFormat() {
    String output;
    if (file.size >= 1000.0) {
      output = "${(file.size / 1000).toStringAsFixed(1)} Gb";
    } else if (file.size >= 1.0) {
      output = "${file.size.toStringAsFixed(1)} Mb";
    } else {
      if ((file.size * 1000) > 1.0) {
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(file.name),
        Text(_getBytesInFormat()),
        const Padding(padding: EdgeInsets.all(10.0)),
        EasyRichText(
          "Are you should you want to accept this file by Guest ${file.sender.displayName}?",
          patternList: [
            EasyRichTextPattern(
              targetString: "Are you should you want to accept this file by",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            EasyRichTextPattern(
              targetString: "Guest ${file.sender.displayName}",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ContentBottom extends StatelessWidget {
  const _ContentBottom({
    required this.onAccept,
    required this.onDeny,
    super.key,
  });

  final VoidCallback onAccept;
  final VoidCallback onDeny;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          onPressed: onDeny,
          child: Text(
            'DENY',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.surface,
          ),
          onPressed: onAccept,
          child: Text(
            'ACCEPT',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
