import 'package:flutter/material.dart';
import 'package:flutter_starter_pack/core/constants/app_styles.dart';

class AppThemeData {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.teal,
    hintColor: Colors.amber,
    textTheme: const TextTheme(
      displayLarge: AppStyles.heading1,
      bodyLarge: AppStyles.bodyText,
    ),
    // Other theme properties
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    hintColor: Colors.redAccent,
    textTheme: TextTheme(
      displayLarge: AppStyles.heading1.copyWith(color: Colors.white),
      bodyLarge: AppStyles.bodyText.copyWith(color: Colors.white70),
    ),
    // Other theme properties
  );
}