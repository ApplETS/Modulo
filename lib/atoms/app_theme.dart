import 'package:flutter/material.dart';
import 'package:modulo/atoms/ets_colors.dart';

/// Contains all the colors and theme of the ETS, App|ETS and specific to the app
class AppTheme {
  AppTheme._();

  // Backgrounds
  static const Color darkThemeBackground = Color(0xff303030);
  static const Color lightThemeBackground = Color(0xfffafafa);

  // App|ETS colors
  static const Color appletsPurple = Color(0xff19375f);
  static const Color appletsDarkPurple = Color(0xff122743);

  // Grade colors
  static const Color gradeFailureMin = Color(0xffd32f2f);
  static const Color gradeFailureMax = Color(0xffff7043);
  static const Color gradePassing = Color(0xfffff176);
  static const Color gradeGoodMin = Color(0xffaed581);
  static const Color gradeGoodMax = Color(0xff43a047);

  // Primary dark
  static const Color primaryDark = Color(0xff121212);

  /// Light theme
  static ThemeData lightTheme() {
    final ThemeData lightTheme = ThemeData.light();
    return lightTheme.copyWith(
        extensions: <ThemeExtension<dynamic>>[
          ETSColors.light,
        ],
        useMaterial3: true,
        primaryColor: ETSColors.light.red,
        bottomNavigationBarTheme: lightTheme.bottomNavigationBarTheme
            .copyWith(selectedItemColor: ETSColors.light.red),
        colorScheme: lightTheme.colorScheme
            .copyWith(
                primary: ETSColors.light.red, secondary: ETSColors.light.red)
            .copyWith(secondary: ETSColors.light.red));
  }

  /// Dark theme
  static ThemeData darkTheme() {
    final ThemeData darkTheme = ThemeData.dark();
    return darkTheme.copyWith(
        extensions: <ThemeExtension<dynamic>>[
          ETSColors.dark,
        ],
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xff121212),
        cardColor: const Color(0xff1e1e1e),
        bottomNavigationBarTheme: darkTheme.bottomNavigationBarTheme
            .copyWith(selectedItemColor: ETSColors.dark.red),
        colorScheme: darkTheme.colorScheme
            .copyWith(
                primary: ETSColors.dark.red, secondary: ETSColors.dark.red)
            .copyWith(secondary: ETSColors.dark.red));
  }
}
