import 'package:flutter/material.dart';

const Color color1 = Color(0xFF1f363d),
    color2 = Color(0xFF40798C),
    color3 = Color(0xFF70A9A1),
    color4 = Color(0xFFAEC1A3),
    color5 = Color(0xFFCFE0C3),
    colorshadow = Color.fromARGB(127, 0, 0, 0),
    colorblack = Colors.black,
    colorwhite = Colors.white;

ThemeData customLightTheme = ThemeData.light().copyWith(
  tabBarTheme: const TabBarTheme(
    indicatorColor: Colors.grey,
    overlayColor: MaterialStatePropertyAll(Colors.transparent),
    tabAlignment: TabAlignment.center,
    labelColor: Colors.grey,
  ),
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStatePropertyAll(
        Colors.grey,
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2.0,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blue,
        width: 2.0,
      ),
    ),
  ),
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.blue),
    ),
  ),
);

ThemeData customAddBtnTheme = ThemeData(
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        Colors.grey,
      ),
      iconColor: MaterialStatePropertyAll(colorblack),
      iconSize: MaterialStatePropertyAll(25),
      side: MaterialStatePropertyAll(
        BorderSide(
          color: Colors.grey.shade600,
          width: 1,
        ),
      ),
    ),
  ),
);

ThemeData customDateTimeButtonTheme = ThemeData(
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Colors.transparent,
        ),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.grey,
          ),
        ),
        iconColor: MaterialStatePropertyAll(Colors.grey)),
  ),
);

TextStyle customDateTimeTextStyle = const TextStyle(
  decoration: TextDecoration.underline,
  decorationColor: Colors.grey,
);
