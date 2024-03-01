import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/Pages/todopage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: ToDopage(),
      ),
    );
  }
}
