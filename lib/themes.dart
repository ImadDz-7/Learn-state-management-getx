import 'package:flutter/material.dart';

class Themes {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(color: Colors.green),
  );
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: Colors.grey),
  );
}
