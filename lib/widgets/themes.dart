import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData LTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.amber,
      appBarTheme: AppBarTheme(color: Colors.white, elevation: 0.0));

  static ThemeData DTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
