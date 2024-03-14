import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/customwidgets/addbtn.dart';

class ToDoTab extends StatefulWidget {
  const ToDoTab({
    super.key,
  });

  @override
  State<ToDoTab> createState() => _ToDoTabState();
}

class _ToDoTabState extends State<ToDoTab> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(padding: EdgeInsets.all(15), child: AddButton()),
        ),
      ],
    );
  }
}
