import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/data/database.dart';
import 'package:todo_list_mobile_application/utilities/listcontentcard.dart';

class Conta extends StatefulWidget {
  const Conta({super.key});

  @override
  State<Conta> createState() => _ContaState();
}

class _ContaState extends State<Conta> {
  //database instance
  Database db = Database();

  @override
  void initState() {
    db.loadDoneData();
    super.initState();
  }

  void refresh() {
    setState(() {
      db.loadDoneData();
    });
  }

  @override
  Widget build(BuildContext context) {
    List doneToDoList = db.doneToDoList;

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
        itemCount: doneToDoList.length,
        itemBuilder: (contex, index) {
          String subject = doneToDoList[index][0],
              details = doneToDoList[index][1];
          DateTime datetime = doneToDoList[index][2];
          return Padding(
            padding: EdgeInsets.only(
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
              itemstatus: true,
              transferData: db.transferDataFromDoneBoxToNotDoneBox(
                  subject: subject,
                  description: details,
                  dateTime: datetime,
                  itemNumber: index),
            ),
          );
        },
      ),
    );
  }
}
