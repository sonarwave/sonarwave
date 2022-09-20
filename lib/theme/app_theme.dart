import 'package:flutter/material.dart';
import 'package:sonarwave/theme/theme.dart';

class AppTheme {
  static final ThemeData defaultTheme = ThemeData(
    fontFamily: 'CircularStd',
    colorScheme: AppColors.defaultScheme,
    scaffoldBackgroundColor: AppColors.defaultScheme.background,
    backgroundColor: AppColors.defaultScheme.background,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
  );
}
