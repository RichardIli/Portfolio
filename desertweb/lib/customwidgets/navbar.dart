import 'package:flutter/material.dart';

import 'package:desertweb/themesstyle/themes.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Navbarbuttons(text: 'Home'),
        Navbarbuttons(text: 'Desserts'),
        Navbarbuttons(text: 'About'),
        Navbarbuttons(text: 'Contact'),
      ],
    );
  }
}

class Navbarbuttons extends StatelessWidget {
  const Navbarbuttons({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextButton(
        onPressed: () {},
        style: navbarbuttonstyle,
        child: Text(
          text,
          style: navbarbuttontextstyle,
        ),
      ),
    );
  }
}
