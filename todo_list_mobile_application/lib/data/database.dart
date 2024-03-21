import 'package:hive_flutter/hive_flutter.dart';

class Database {
  List toDoList = [];

  final todobox = Hive.box('todobox');

  //load the data from box
  void loadData() {
    toDoList.length != todobox.length
        ? {
            toDoList = todobox.values.toList(),
          }
        : null;
  }

  //add data to todobox
  void addDataToToDoBox({
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

  void getData() {}
}
