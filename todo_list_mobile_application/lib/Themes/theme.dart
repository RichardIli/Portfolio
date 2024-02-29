import 'package:flutter/material.dart';

const Color color1 = Color(0xFF1f363d),
    color2 = Color(0xFF40798C),
    color3 = Color(0xFF70A9A1),
    color4 = Color(0xFFAEC1A3),
    color5 = Color(0xFFCFE0C3),
    colorblack = Colors.black,
    colorwhite = Colors.white;

ThemeData mainCustomTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: color1,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: colorblack,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: color5,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: color4,
    ),
    drawerTheme: const DrawerThemeData(backgroundColor: color5));

ThemeData customAddBtnTheme = ThemeData(
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        color4,
      ),
      iconColor: MaterialStatePropertyAll(colorblack),
      iconSize: MaterialStatePropertyAll(25),
    ),
  ),
);

ThemeData customMenuTheme = ThemeData(
  drawerTheme: DrawerThemeData(),
);

const TextStyle customdrawerheadertextstyle = TextStyle();
