import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/Themes&Routes/routes.dart';
import 'package:todo_list_mobile_application/Themes&Routes/theme.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: customNavBarTheme,
      child: const Row(
        children: [
          Expanded(
            child: ToDoButton(
              route: toDoPageRoute,
              txt: 'To - Do Task',
            ),
          ),
          Expanded(
              child: ToDoButton(
            route: donePageRoute,
            txt: 'Done Task',
          ))
        ],
      ),
    );
  }
}

class ToDoButton extends StatefulWidget {
  const ToDoButton({
    super.key,
    required this.txt,
    required this.route,
  });

  final String txt, route;

  @override
  State<ToDoButton> createState() => _ToDoButtonState();
}

class _ToDoButtonState extends State<ToDoButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, widget.route);
      },
      child: Text(widget.txt),
    );
  }
}
