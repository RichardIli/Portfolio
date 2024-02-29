import 'package:facebook_clone_mobile_application/theme.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: navbartheme,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            border: Border(
              left: BorderSide.none,
              top: BorderSide.none,
              right: BorderSide.none,
              bottom: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
          ),
          child: const Column(
            children: [
              Row(
                children: [
                  NavbarButton(btnIcon: Icons.home_filled),
                  NavbarButton(btnIcon: Icons.ondemand_video_rounded),
                  NavbarButton(btnIcon: Icons.people_outline),
                  NavbarButton(btnIcon: Icons.storefront),
                  NavbarButton(btnIcon: Icons.notifications_none_rounded),
                  NavbarButton(btnIcon: Icons.circle_outlined),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavbarButton extends StatelessWidget {
  const NavbarButton({
    super.key,
    required this.btnIcon,
  });

  final IconData btnIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          btnIcon,
        ),
      ),
    );
  }
}
