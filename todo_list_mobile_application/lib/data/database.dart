import 'package:hive_flutter/hive_flutter.dart';

class Database {
  List toDoList = [];
  final todobox = Hive.box('todobox');

  //run in first time open application / fresh application
  void createInitialData() {
    toDoList = [
      [false, 'Sample Subject', 'Sample Description', DateTime.now()],
    ];
  }

  //load the data from box
  void loadData() {
    toDoList = todobox.get("TODOLIST");
  }

  //update the box
  void updateData() {
    todobox.put("TODOLIST", toDoList);
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
}
