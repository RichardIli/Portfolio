import 'package:flutter/material.dart';

class TabAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function() onPressed;
  const TabAppBar({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.refresh_rounded),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
