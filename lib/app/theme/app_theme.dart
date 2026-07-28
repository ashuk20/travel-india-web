import 'package:flutter/material.dart';
import 'package:travel_india/app/theme/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.scaffold,
      colorSchemeSeed: AppColors.primary,
    );
  }
}
