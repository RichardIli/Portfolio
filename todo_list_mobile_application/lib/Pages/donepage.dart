import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/PagesContents/doneappbar.dart';
import 'package:todo_list_mobile_application/PagesContents/menu.dart';
import 'package:todo_list_mobile_application/Themes/theme.dart';

class Donepage extends StatelessWidget {
  const Donepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: mainCustomTheme,
      child: Scaffold(
        appBar: const DoneAppBar(),
        drawer: Theme(
          data: customMenuTheme,
          child: Menu(
            appBarHeight: const DoneAppBar().preferredSize.height,
          ),
        ),
        body: const Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Stack(children: []),
          ),
        ),
      ),
    );
  }
}
