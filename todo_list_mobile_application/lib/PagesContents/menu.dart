import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/Themes/theme.dart';

class Menu extends StatelessWidget {
  const Menu({
    super.key,
    required this.appBarHeight,
  });

  final double appBarHeight;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: appBarHeight + 10,
            child: DrawerHeader(
              decoration: const BoxDecoration(color: color1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Menu',
                    style: customdrawerheadertextstyle,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_right_alt_rounded),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
