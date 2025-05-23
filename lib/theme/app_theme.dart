import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      fontFamily: 'Ubuntu',
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      colorScheme: const ColorScheme.light(
        primary: const Color.fromARGB(255, 255, 72, 36),
        secondary: Color(0xFFF5A522),
        surface: Color(0xFFEEEEEE),
      ),
    );
  }
}
