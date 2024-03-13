import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/screens/additem.dart';
import 'package:todo_list_mobile_application/screens/home.dart';

Map<String, WidgetBuilder> routes = {
  '/home': (context) => const Home(),
  '/additemwindow': (context) => const AddItemWindow(),
  //'/test': (context) => const Test()
};
