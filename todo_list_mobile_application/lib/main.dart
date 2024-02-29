import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/Pages/todopage.dart';
import 'package:todo_list_mobile_application/Themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Theme(
          data: mainCustomTheme,
          child: const ToDopage(),
        ),
      ),
    );
  }
}
