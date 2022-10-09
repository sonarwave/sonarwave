import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  void replaceSnackBar({Widget? content, SnackBar? snackBar}) {
    if (content == null && snackBar == null) {
      throw ArgumentError;
    }

    if (content != null && snackBar != null) {
      throw ArgumentError();
    }

    SnackBar bar;

    if (snackBar == null) {
      bar = SnackBar(content: content!);
    } else {
      bar = snackBar;
    }

    ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(bar);
  }
}
