import 'package:hive_flutter/hive_flutter.dart';

class Database {
  List toDoList = [];
  List notDoneToDoList = [];
  List doneToDoList = [];

  final todobox = Hive.box('todobox');

  //load the data from box
  void loadData() {
    toDoList.length != todobox.length
        ? {
            toDoList = todobox.values.toList(),
            //Test if the filtering of data is done only need is to make a
            //function that will change  the state the 'initial bool(using button)' from false to true.
            notDoneToDoList =
                toDoList.where((boolvalue) => boolvalue[0] == false).toList(),
            doneToDoList =
                toDoList.where((boolvalue) => boolvalue[0] == true).toList()
          }
        : null;
  }

  //add data to box
  void addData({
    required String subject,
    required String description,
    required bool hasDateTime,
    required DateTime dueDateTime,
  }) {
    todobox.add([
      false,
      subject,
      description,
      hasDateTime ? dueDateTime : null,
    ]);
  }

  void updateData({
    required int itemNumber,
    required bool isCompleted,
  }) {
    List dataList = getData(itemNumber: itemNumber);
    dataList[0] = isCompleted;
    todobox.putAt(itemNumber, dataList);
  }

  //get Data for display
  getData({required int itemNumber}) {
    var dataGet = todobox.get(itemNumber);
    return dataGet;
  }
}
