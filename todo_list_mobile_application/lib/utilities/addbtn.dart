import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/theme.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: customAddBtnTheme,
      child: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/additemscreen');
        },
        icon: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
