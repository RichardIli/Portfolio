import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/screens/donepage.dart';
import 'package:todo_list_mobile_application/screens/todopage.dart';
import 'package:todo_list_mobile_application/Themes&Routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        toDoPageRoute: (context) => const ToDopage(),
        donePageRoute: (context) => const Donepage()
      },
      home: const ToDopage(),
    );
  }
}
