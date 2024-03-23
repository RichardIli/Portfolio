import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/route.dart';

void main() async {
  await Hive.initFlutter();

  //open box
  // ignore: unused_local_variable
  var notdonetodobox = await Hive.openBox('notdonetodobox');
  // ignore: unused_local_variable
  var donetodobox = await Hive.openBox('donetodobox');
  runApp(MainApp());
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
