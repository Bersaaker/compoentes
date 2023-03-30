import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.greenAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: Colors.orange,
      //appBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme: const AppBarTheme(
        color: Colors.blueGrey,
        elevation: 0,
      ));
}
