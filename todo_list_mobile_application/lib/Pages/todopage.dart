import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/PagesContents/addbtn.dart';
import 'package:todo_list_mobile_application/PagesContents/todoappbar.dart';
//import 'package:todo_list_mobile_application/PagesContents/addbtn.dart';
//import 'package:todo_list_mobile_application/PagesContents/todoappbar.dart';
import 'package:todo_list_mobile_application/Themes/theme.dart';

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
              ToDoNavbar(),
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
