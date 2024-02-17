import 'package:flutter/material.dart';

/*'socialbuttontheme' is the name of these theme*/
class CustomThemes {
  static ThemeData socialbuttontheme = ThemeData(
    iconTheme: const IconThemeData(
      size: 15,
      color: Colors.white, // Adjust the color of the icon
    ),
  );

  static ThemeData dessertlogo = ThemeData(
    primaryColor: Colors.transparent,
  );
}

final callusbuttonstyle = ButtonStyle(
  side: MaterialStateProperty.all<BorderSide>(
    const BorderSide(
        color: Colors.yellow, width: 2.0), // Set border color and width
  ),
  shape: MaterialStateProperty.all<OutlinedBorder>(
    const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero, // Set border radius to 0
    ),
  ),
);
