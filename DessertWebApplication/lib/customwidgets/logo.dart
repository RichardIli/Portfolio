import 'package:desertweb/pages/desktop/homepage.dart';
import 'package:flutter/material.dart';

import 'package:desertweb/themesstyleroute/themes.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: logobuttonstyle,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Homepage(),
          ),
        );
      },
      child: const Text(
        'Desserts Shop',
        style: logotextstyle,
      ),
    );
  }
}
