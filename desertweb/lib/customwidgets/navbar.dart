import 'package:desertweb/pages/desktop/aboutpage.dart';
import 'package:desertweb/pages/desktop/contactpage.dart';
import 'package:desertweb/pages/desktop/dessertpage.dart';
import 'package:desertweb/pages/desktop/homepage.dart';
import 'package:desertweb/themesstyleroute/themes.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Navbarbuttons(
          text: 'Home',
          navto: MaterialPageRoute(builder: (context) => const Homepage()),
        ),
        Navbarbuttons(
          text: 'Desserts',
          navto: MaterialPageRoute(builder: (context) => const Dessertpage()),
        ),
        Navbarbuttons(
          text: 'About',
          navto: MaterialPageRoute(builder: (context) => const Aboutpage()),
        ),
        Navbarbuttons(
          text: 'Contact',
          navto: MaterialPageRoute(builder: (context) => const Contactpage()),
        ),
      ],
    );
  }
}

class Navbarbuttons extends StatelessWidget {
  const Navbarbuttons({
    super.key,
    required this.text,
    required this.navto,
  });

  final String text;
  final MaterialPageRoute navto;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            navto,
          );
        },
        style: navbarbuttonstyle,
        child: Text(
          text,
          style: navbarbuttontextstyle,
        ),
      ),
    );
  }
}
