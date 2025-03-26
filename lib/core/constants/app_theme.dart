import 'package:flutter/material.dart';

class AppTheme {
  // Private constructor
  AppTheme._();

  // Singleton instance
  static final AppTheme _instance = AppTheme._();

  // Public accessor to the instance
  factory AppTheme() => _instance;

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(
      primary: Colors.blue,
      secondary: Colors.teal,
      background: Colors.black,
      surface: Colors.black,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onBackground: Colors.white,
      onSurface: Colors.white,
    ),
  );
}
