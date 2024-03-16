import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/customwidgets/addbtn.dart';
import 'package:todo_list_mobile_application/data/database.dart';

class ToDoTab extends StatefulWidget {
  const ToDoTab({
    super.key,
  });

  @override
  State<ToDoTab> createState() => _ToDoTabState();
}

class _ToDoTabState extends State<ToDoTab> {
  //database instance
  Database db = Database();

  @override
  void initState() {
    //1st time open app/ fresh app
    db.todobox.get('TODOLIST') == null ? db.createInitialData() : db.loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (contex, index) {
          return TodoListContentCard(
            //the arrangement of the data: bool(iscompleted?), subject, description, date
            subject: db.toDoList[index][1],
            selectedTime: db.toDoList[index][3],
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

class TodoListContentCard extends StatelessWidget {
  final String subject;
  final DateTime selectedTime;

  const TodoListContentCard({
    super.key,
    required this.subject,
    required this.selectedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subject,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(selectedTime.toString()),
        ],
      ),
    );
  }
}
