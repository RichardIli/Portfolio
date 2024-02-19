import 'package:flutter/material.dart';

import 'package:desertweb/customwidgets/logo.dart';
import 'package:desertweb/customwidgets/navbar.dart';
import 'package:desertweb/themesstyle/themes.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultpadding,
      child: Column(
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
          Row(
            children: [
              Column(
                children: [
                  /*const Text(
                    'Desserts, with their irresistible sweetness and diverse array of flavors, hold a special place in culinary delights. Ranging from decadent chocolate creations to delicate pastries and refreshing fruit-based treats, desserts cater to a universal love for indulgence. These delightful confections often serve as the perfect finale to a meal, elevating the dining experience with a symphony of textures and tastes. Whether it is the comforting warmth of a freshly baked apple pie, the silky richness of a velvety cheesecake, or the artful presentation of a colorful fruit tart, desserts not only satisfy our sweet cravings but also showcase the creativity and skill of culinary artisans. In every culture, desserts play a role in celebrations, offering a sweet note of joy and bringing people together over shared moments of delight. The world of desserts is a realm of endless possibilities, where each bite tells a story of craftsmanship and passion, making them a delightful and integral part of the culinary landscape.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),*/
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.facebook,
                          size: 15,
                        ),
                        label: const Text(
                          'Facebook',
                          //style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(fontSize: 15, color: Colors.red)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
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
