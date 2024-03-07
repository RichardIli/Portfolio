import 'package:flutter/material.dart';

const Color color1 = Color(0xFF1f363d),
    color2 = Color(0xFF40798C),
    color3 = Color(0xFF70A9A1),
    color4 = Color(0xFFAEC1A3),
    color5 = Color(0xFFCFE0C3),
    colorshadow = Color.fromARGB(127, 0, 0, 0),
    colorblack = Colors.black,
    colorwhite = Colors.white;

ThemeData mainCustomTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: color1,
    titleTextStyle: TextStyle(
      color: colorblack,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    centerTitle: false,
  ),
  scaffoldBackgroundColor: color5,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: color4,
  ),
  drawerTheme: const DrawerThemeData(backgroundColor: color5),
);

ThemeData customTabBArIndicatorTheme = ThemeData(
  tabBarTheme: const TabBarTheme(
    indicatorColor: Colors.grey,
    overlayColor: MaterialStatePropertyAll(Colors.transparent),
    tabAlignment: TabAlignment.center,
    labelColor: Colors.grey,
  ),
);

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
