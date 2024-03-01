import 'package:flutter/material.dart';

class DoneAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DoneAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return TextButton.icon(
            label: const Text('To - Do'),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.keyboard_double_arrow_right_rounded),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
