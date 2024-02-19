import 'package:flutter/material.dart';

import 'package:desertweb/themesstyle/themes.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: logobuttonstyle,
      onPressed: () {},
      child: const Text(
        'Desserts Shop',
        style: logotextstyle,
      ),
    );
  }
}
