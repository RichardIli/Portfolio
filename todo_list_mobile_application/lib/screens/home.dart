import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/theme.dart';
import 'package:todo_list_mobile_application/data/database.dart';
import 'package:todo_list_mobile_application/utilities/appbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    return Theme(
      data: customLightTheme,
      child: Scaffold(
        appBar: CustomAppBar(
          iconbutton: IconButton(
            onPressed: () {
              refresh();
            },
            icon: Icon(Icons.refresh_rounded),
          ),
        ),
        body: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            DateTime? datetime = db.toDoList[index][3];
            return Padding(
              padding: const EdgeInsets.only(
                top: 2.5,
                bottom: 2.5,
                left: 5,
                right: 5,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/itemdetails',
                      arguments: index);
                },
                child: Card(
                  color: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              db.toDoList[index][1],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(datetime == null
                                ? 'Date: N/A    Time: N/A'
                                : 'Date: ${datetime.month}-${datetime.day}   Time: ${datetime.hour}:${datetime.minute}'),
                          ],
                        ),
                        Checkbox(
                          value: db.toDoList[index][0],
                          onChanged: (bool? newValue) {
                            refresh;
                            /*setState(
                          () {
                            db.updateData(
                                itemNumber: index,
                                isCompleted: !widget.listtouse[index][0]);
                          },
                        );*/
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.all(10),
          child: Theme(
            data: customAddBtnTheme,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/additemscreen');
              },
              icon: const Icon(
                Icons.add,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
