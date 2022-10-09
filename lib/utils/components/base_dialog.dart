import 'package:flutter/material.dart';

class BaseDialog extends StatelessWidget {
  const BaseDialog(
    this.widget, {
    this.backgroundColor,
    super.key,
  });

  final Widget widget;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.background,
      child: SizedBox(
        height: 300.0,
        width: 500.0,
        child: widget,
      ),
    );
  }
}
