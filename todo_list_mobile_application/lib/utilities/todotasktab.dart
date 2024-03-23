import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/utilities/addbtn.dart';
import 'package:todo_list_mobile_application/data/database.dart';
import 'package:todo_list_mobile_application/utilities/listcontentcard.dart';

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
    db.loadNotDoneData();
    super.initState();
  }

  void refresh() {
    setState(() {
      db.loadNotDoneData();
    });
  }

  @override
  Widget build(BuildContext context) {
    List notDoneToDoList = db.notDoneToDoList;
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
        itemCount: notDoneToDoList.length,
        itemBuilder: (contex, index) {
          String subject = notDoneToDoList[index][0],
              details = notDoneToDoList[index][1];
          DateTime datetime = notDoneToDoList[index][2];
          return Padding(
            padding: const EdgeInsets.only(
              top: 2.5,
              bottom: 2.5,
              left: 5,
              right: 5,
            ),
            child: ListContentCard(
              //the arrangement of the data: bool(iscompleted?), subject, description, date
              subject: subject,
              details: details,
              selectedTime: datetime,
              itemNumber: index,
              itemstatus: false,
              transferData: db.transferDataFromNotDoneBoxToDoneBox(
                  subject: subject,
                  description: details,
                  dateTime: datetime,
                  itemNumber: index),
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
