import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconButton iconbutton;
  const CustomAppBar({
    super.key,
    required this.iconbutton,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text('To - Do'),
      actions: [iconbutton],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
