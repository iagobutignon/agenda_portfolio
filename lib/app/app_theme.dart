import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Colors.purple,
        onPrimary: Colors.white,
        secondary: Colors.green,
        onSecondary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.deepPurple,
        onSurface: Colors.white,
        background: Colors.purple.shade100,
        onBackground: Colors.purple,
      ),
    );
  }
}