import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/data/database.dart';
import 'package:todo_list_mobile_application/utilities/addbtn.dart';
import 'package:todo_list_mobile_application/utilities/listcontentcard.dart';
import 'package:todo_list_mobile_application/utilities/tabappbar.dart';

class ToDoTab extends StatefulWidget {
  const ToDoTab({super.key});

  @override
  State<ToDoTab> createState() => _ToDoTabState();

  static _ToDoTabState? of(BuildContext context) {
    return context.findAncestorStateOfType<_ToDoTabState>();
  }
}

class _ToDoTabState extends State<ToDoTab> {
  //database instance
  Database db = Database();

  @override
  void initState() {
    db.loadData();
    super.initState();
  }

  void refresh() {
    setState(() {
      db.loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabAppBar(
        onPressed: refresh,
      ),
      body: ListView.builder(
        itemCount: db.notDoneToDoList.length,
        itemBuilder: (contex, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 2.5,
              bottom: 2.5,
              left: 5,
              right: 5,
            ),
            child: TodoListContentCard(
              //the arrangement of the data: bool(iscompleted?), subject, description, date
              isCompleted: db.notDoneToDoList[index][0],
              subject: db.notDoneToDoList[index][1],
              selectedTime: db.notDoneToDoList[index][3],
              itemNumber: index,
              refresh: refresh,
            ),
          );
        },
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(10),
        child: AddButton(),
      ),
    );
  }
}
