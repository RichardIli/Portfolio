import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/utilities/addbtn.dart';
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
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: refresh,
            icon: Icon(Icons.refresh_rounded),
          ),
        ],
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

class TodoListContentCard extends StatelessWidget {
  final bool isCompleted;
  final String subject;
  final DateTime? selectedTime;
  final int itemNumber;

  const TodoListContentCard(
      {super.key,
      required this.isCompleted,
      required this.subject,
      required this.selectedTime,
      required this.itemNumber});

  @override
  Widget build(BuildContext context) {
    var txt = selectedTime == null
        ? 'Date: N/A    Time: N/A'
        : 'Date: ${selectedTime?.month}-${selectedTime?.day}    Time: ${selectedTime?.hour}:${selectedTime?.minute}';

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/itemdetails',
          arguments: itemNumber,
        );
      },
      child: Card(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(10),
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
              Text(txt),
            ],
          ),
        ),
      ),
    );
  }
}
