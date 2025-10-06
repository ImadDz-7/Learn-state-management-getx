import 'package:flutter/material.dart';

class Themes {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(color: Colors.blueGrey),
  );
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: Colors.green),
  );
}
