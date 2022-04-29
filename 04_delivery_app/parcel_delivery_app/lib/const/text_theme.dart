import 'package:flutter/material.dart';

class ParcelTheme {
  static ThemeData theme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Colors.green),
      textTheme: TextTheme(
        headline1: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        button: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        headline3: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        headline4: const TextStyle(
          debugLabel: 'Link',
          fontFamily: 'Poppins',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        headline2: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
