import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/screens/additem.dart';
import 'package:todo_list_mobile_application/screens/home.dart';
import 'package:todo_list_mobile_application/screens/itemdetails.dart';

Map<String, WidgetBuilder> routes = {
  '/home': (context) => const Home(),
  '/additemscreen': (context) => const AddItemScreen(),
  '/itemdetails': (context) => const ItemDetailsScreen(),

  //'/test': (context) => const Test()
};
