import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/Themes/theme.dart';

class ToDoNavbar extends StatelessWidget implements PreferredSizeWidget {
  const ToDoNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: customToDoAppBarTheme,
      child: Container(
        decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  const Text('To - Do'),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_double_arrow_right_rounded,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
