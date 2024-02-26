import 'package:flutter/material.dart';

import 'package:desertweb/themesstyleroute/themes.dart';
import 'package:desertweb/customwidgets/logo.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialbuttonWidget(icon: fbicon),
            SocialbuttonWidget(icon: igicon),
            SocialbuttonWidget(icon: twtricon),
          ],
        ),
        const Logo(),
        TextButton(
            onPressed: () {},
            style: callusbuttonstyle,
            child: const Text(
              'call us: 123456789',
              style: TextStyle(color: Colors.yellow),
            ))
      ],
    );
  }
}

class SocialbuttonWidget extends StatelessWidget {
  const SocialbuttonWidget({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: CustomThemes.socialbuttontheme,
      child: IconButton(
        onPressed: () {
          /*should navigae to facebook, instagram, twitter */
        },
        icon: Icon(icon),
      ),
    );
  }
}
