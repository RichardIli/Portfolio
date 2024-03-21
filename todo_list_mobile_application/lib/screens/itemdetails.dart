import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/theme.dart';
import 'package:todo_list_mobile_application/data/database.dart';
import 'package:todo_list_mobile_application/utilities/appbar.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Database db = Database();
    final int itemnumber = ModalRoute.of(context)!.settings.arguments as int;

    var details = db.toDoList[itemnumber];
    String subject = details[1].toString(), description = details[2].toString();
    DateTime? datetime = details[2];

    return Theme(
      data: customLightTheme,
      child: Scaffold(
        appBar: CustomAppBar(
          iconbutton: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.refresh_rounded),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListView(
                  children: [
                    ListContent(
                      txt: subject,
                      fontsize: 20,
                    ),
                    ListContent(
                        txt: datetime == null
                            ? 'Date: N/A    Time: N/A'
                            : 'Date: ${datetime.year}-${datetime.month}-${datetime.day}    Time:${datetime.hour}:${datetime.minute}'),
                    ListContent(txt: description),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListContent extends StatelessWidget {
  final double? fontsize;
  const ListContent({super.key, required this.txt, this.fontsize});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade400,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          txt,
          style: TextStyle(fontSize: fontsize),
        ),
      ),
    );
  }
}
