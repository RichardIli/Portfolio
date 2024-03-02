import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/customwidgets/addbtn.dart';
import 'package:todo_list_mobile_application/customwidgets/navbar.dart';
import 'package:todo_list_mobile_application/Themes&Routes/theme.dart';

class ToDopage extends StatelessWidget {
  const ToDopage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: mainCustomTheme,
      child: const Scaffold(
        body: Stack(children: [
          Column(
            children: [
              NavBar(),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: AddButton(),
          ),
        ]),
      ),
    );
  }
}
