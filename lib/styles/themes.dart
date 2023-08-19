import 'package:flutter/material.dart';
import 'package:tiktokclonecoding/constants/sizes.dart';

class Themes{
  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xFFE9435A),
    appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: Sizes.size18,
          fontWeight: FontWeight.w600,
        )
    ),
  );
}