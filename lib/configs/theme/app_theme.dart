import 'package:flutter/material.dart';
import 'package:sonarwave/configs/theme/app_colors.dart';

class AppTheme {
  static final ThemeData defaultTheme = ThemeData.dark().copyWith(
    //fontFamily: 'CircularStd',
    colorScheme: AppColors.defaultScheme,
    scaffoldBackgroundColor: AppColors.defaultScheme.background,
    backgroundColor: AppColors.defaultScheme.background,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
  );
}
