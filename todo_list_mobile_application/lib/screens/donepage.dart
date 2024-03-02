import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/Themes&Routes/theme.dart';
import 'package:todo_list_mobile_application/customwidgets/appbar.dart';
import 'package:todo_list_mobile_application/customwidgets/navbar.dart';

class Donepage extends StatelessWidget {
  const Donepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: mainCustomTheme,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Column(
          children: [
            const NavBar(),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
