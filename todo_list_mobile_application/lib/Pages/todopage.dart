import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/PagesContents/addbtn.dart';
import 'package:todo_list_mobile_application/PagesContents/appbar.dart';
import 'package:todo_list_mobile_application/PagesContents/menu.dart';
import 'package:todo_list_mobile_application/Themes/theme.dart';

class ToDopage extends StatelessWidget {
  const ToDopage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      drawer: Theme(
          data: customMenuTheme,
          child: Menu(appBarHeight: const CustomAppbar().preferredSize.height)),
      body: const Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Stack(children: [
            AddButton(),
          ]),
        ),
      ),
    );
  }
}
