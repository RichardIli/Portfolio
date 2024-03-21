import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/data/database.dart';
import 'package:todo_list_mobile_application/utilities/listcontentcard.dart';
import 'package:todo_list_mobile_application/utilities/tabappbar.dart';

class DoneTab extends StatefulWidget {
  const DoneTab({super.key, required this.clr});
  final Color clr;

  @override
  State<DoneTab> createState() => _DoneTabState();
}

class _DoneTabState extends State<DoneTab> {
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
        itemCount: db.doneToDoList.length,
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
              isCompleted: db.doneToDoList[index][0],
              subject: db.doneToDoList[index][1],
              selectedTime: db.doneToDoList[index][3],
              itemNumber: index,
              refresh: refresh,
            ),
          );
        },
      ),
    );
  }
}
