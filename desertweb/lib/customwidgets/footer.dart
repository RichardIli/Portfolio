import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:desertweb/customwidgets/logo.dart';
import 'package:desertweb/customwidgets/navbar.dart';
import 'package:desertweb/themesstyleroute/themes.dart';
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
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              bottom: 50,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Desserts, with their irresistible sweetness and diverse array of flavors, hold a special place in culinary delights. Ranging from decadent chocolate creations to delicate pastries and refreshing fruit-based treats, desserts cater to a universal love for indulgence. These delightful confections often serve as the perfect finale to a meal, elevating the dining experience with a symphony of textures and tastes. Whether it is the comforting warmth of a freshly baked apple pie, the silky richness of a velvety cheesecake, or the artful presentation of a colorful fruit tart, desserts not only satisfy our sweet cravings but also showcase the creativity and skill of culinary artisans. In every culture, desserts play a role in celebrations, offering a sweet note of joy and bringing people together over shared moments of delight. The world of desserts is a realm of endless possibilities, where each bite tells a story of craftsmanship and passion, making them a delightful and integral part of the culinary landscape.',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Row(
                          children: [
                            FooterSocialButton(
                              icon: fbicon,
                              text: 'Facebook',
                              function: () {
                                openFacebook();
                              },
                            ),
                            FooterSocialButton(
                                icon: igicon,
                                text: 'Instagram',
                                function: () {
                                  openInstagram();
                                }),
                            FooterSocialButton(
                                icon: twtricon,
                                text: 'Twitter',
                                function: () {
                                  openFacebook();
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FooterLocationContact(
                        icon: FontAwesomeIcons.locationArrow,
                        label: 'Location',
                        text: '123 st., \n123 City, \n123',
                      ),
                      FooterLocationContact(
                        icon: Icons.phone,
                        label: 'Contact',
                        text: '123456789\n123456789@gmail.com',
                      ),
                    ],
                  ),
                ),
              ],
            ),
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

void openFacebook() async {
  final url = Uri.parse('https://www.facebook.com');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

void openInstagram() async {
  final url = Uri.parse('https://www.instagram.com');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

void openTwitter() async {
  final url = Uri.parse('https://twitter.com');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class FooterLocationContact extends StatelessWidget {
  const FooterLocationContact({
    super.key,
    required this.icon,
    required this.label,
    required this.text,
  });

  final IconData icon;
  final String label, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 50,
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.yellow,
            fontSize: 15,
          ),
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

class FooterSocialButton extends StatelessWidget {
  const FooterSocialButton({
    super.key,
    required this.icon,
    required this.text,
    required this.function,
  });

  final IconData icon;
  final String text;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton.icon(
        onPressed: function,
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
              color: Colors.white,
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
