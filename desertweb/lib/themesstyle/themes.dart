import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Use them to controll all the things

const bgcolor = Colors.black;
const bordercolor = Colors.yellow;
const iconfontcolor = Colors.white;
const double logosize = 50;
const double normaltext = 15;

const fbicon = Icons.facebook,
    igicon = FontAwesomeIcons.instagram,
    twtricon = FontAwesomeIcons.twitter;

class CustomThemes {
  static ThemeData socialbuttontheme = ThemeData(
    iconTheme: const IconThemeData(
      size: 15,
      color: iconfontcolor, // Adjust the color of the icon
    ),
  );

  static ThemeData customconatinertheme = ThemeData(
    primarySwatch: Colors.blue,
    colorScheme: const ColorScheme.dark(background: Colors.white),
  );
}

final logobuttonstyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(bgcolor),
  shape: MaterialStateProperty.all<OutlinedBorder>(
    const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero, // Set border radius
    ),
  ),
);

const logotextstyle = TextStyle(
  color: bordercolor,
  fontSize: logosize,
);

final callusbuttonstyle = ButtonStyle(
  side: MaterialStateProperty.all<BorderSide>(
    const BorderSide(
        color: bordercolor, width: 2.0), // Set border color and width
  ),
  shape: MaterialStateProperty.all<OutlinedBorder>(
    const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero, // Set border radius
    ),
  ),
);

//=========================================================================================================================

//Navbar Themes and Style Area
final navbarbuttonstyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(bgcolor),
  elevation: MaterialStateProperty.all<double>(0),
  shape: MaterialStateProperty.all<OutlinedBorder>(
    const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero, // Set border radius to 0
    ),
  ),
  side: MaterialStateProperty.all<BorderSide>(
    const BorderSide(width: 0),
  ),
);

const navbarbuttontextstyle = TextStyle(
  color: iconfontcolor,
  fontSize: 15,
);

//===============================================================================================================
const EdgeInsets defaultpadding = EdgeInsets.all(100.0);
const double containerdefaultheightsize = 500;
