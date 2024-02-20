import 'package:flutter/material.dart';

import 'package:desertweb/customwidgets/logo.dart';
import 'package:desertweb/customwidgets/navbar.dart';
import 'package:desertweb/themesstyle/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultpadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Logo(),
              Navbar(),
            ],
          ),
          divider(),
          const Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Desserts, with their irresistible sweetness and diverse array of flavors, hold a special place in culinary delights. Ranging from decadent chocolate creations to delicate pastries and refreshing fruit-based treats, desserts cater to a universal love for indulgence. These delightful confections often serve as the perfect finale to a meal, elevating the dining experience with a symphony of textures and tastes. Whether it is the comforting warmth of a freshly baked apple pie, the silky richness of a velvety cheesecake, or the artful presentation of a colorful fruit tart, desserts not only satisfy our sweet cravings but also showcase the creativity and skill of culinary artisans. In every culture, desserts play a role in celebrations, offering a sweet note of joy and bringing people together over shared moments of delight. The world of desserts is a realm of endless possibilities, where each bite tells a story of craftsmanship and passion, making them a delightful and integral part of the culinary landscape.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        footer_social_button(
                          icon: fbicon,
                          text: 'Facebook',
                        ),
                        footer_social_button(
                          icon: igicon,
                          text: 'Instagram',
                        ),
                        footer_social_button(
                          icon: twtricon,
                          text: 'Twitter',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  footer_Location_Contact(
                    icon: FontAwesomeIcons.locationArrow,
                    text: '123 st., \n123 City, \n123',
                  ),
                  footer_Location_Contact(
                    icon: Icons.timer,
                    text: 'Mon to Fri, 9am to 6pm',
                  ),
                  footer_Location_Contact(
                    icon: Icons.mail_outline,
                    text: 'Contact us: \n 13456789 \n123456789@gmail.com',
                  ),
                ],
              ),
            ],
          ),
          divider(),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'Copyright ©2024 All rights reserved | The content on this page is not an original idea; it has been adapted from an existing template provided by Colorlib, with appropriate reference and attribution.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Divider divider() {
    return const Divider(
      thickness: 2.5,
      color: Colors.grey,
    );
  }
}

// ignore: camel_case_types
class footer_Location_Contact extends StatelessWidget {
  const footer_Location_Contact({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 50,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class footer_social_button extends StatelessWidget {
  const footer_social_button({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 15,
          color: Colors.white,
        ),
        label: Text(
          text,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
        style: ButtonStyle(
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              color: Colors.yellow,
              width: 2,
            ),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ),
    );
  }
}
