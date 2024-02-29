import 'package:flutter/material.dart';

ThemeData mainTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 30,
    ),
    backgroundColor: Colors.transparent,
  ),
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.blue,
  hintColor: Colors.green,
  fontFamily: 'Roboto',
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(fontSize: 25, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
    bodySmall: TextStyle(fontSize: 12, color: Colors.white),
  ),
);

ThemeData navbartheme = ThemeData(
  iconTheme: const IconThemeData(
    color: Colors.grey,
    size: 30,
  ),
  buttonTheme: const ButtonThemeData(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
  ),
);
