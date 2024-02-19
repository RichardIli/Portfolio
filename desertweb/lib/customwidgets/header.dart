import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:desertweb/themesstyle/themes.dart';
import 'package:desertweb/customwidgets/logo.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const fbicon = Icons.facebook,
        igicon = FontAwesomeIcons.instagram,
        twicon = FontAwesomeIcons.twitter;
    return Row(
      //mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(
          children: [
            socialbutton_widget(icon: fbicon),
            socialbutton_widget(icon: igicon),
            socialbutton_widget(icon: twicon),
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

// ignore: camel_case_types
class socialbutton_widget extends StatelessWidget {
  const socialbutton_widget({
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
