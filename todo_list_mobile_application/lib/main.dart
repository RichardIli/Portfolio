import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/route.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To - Do',
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: '/home',
      //initialRoute: '/test',
    );
  }
}
