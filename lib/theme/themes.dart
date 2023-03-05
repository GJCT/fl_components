import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.deepOrange;
  
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: Colors.deepOrange,
    ),
    textButtonTheme: TextButtonThemeData(
    style:  TextButton.styleFrom(foregroundColor: primary)
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
     style: ElevatedButton.styleFrom(
      backgroundColor: primary,
      shape: const StadiumBorder(),
     ),
    )
  );

  
}