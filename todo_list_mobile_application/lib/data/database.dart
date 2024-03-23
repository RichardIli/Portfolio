import 'package:hive_flutter/hive_flutter.dart';

class Database {
  List notDoneToDoList = [];
  List doneToDoList = [];

  final notDoneToDoBox = Hive.box('notdonetodobox');
  final doneToDoBox = Hive.box('donetodobox');

  //load data from not done box
  void loadNotDoneData() {
    notDoneToDoList.length < notDoneToDoBox.length
        ? {
            for (int i = notDoneToDoList.length; i < notDoneToDoBox.length; i++)
              {
                notDoneToDoList.add(notDoneToDoBox.get(i)),
              }
          }
        : notDoneToDoList.length > notDoneToDoBox.length
            ? {
                for (int i = 0; i < notDoneToDoBox.length; i++)
                  {
                    notDoneToDoList.add(notDoneToDoBox.get(i)),
                  }
              }
            : null;
  }

  //load data from done box
  void loadDoneData() {
    doneToDoList.length < doneToDoBox.length
        ? {
            for (int i = doneToDoList.length; i < doneToDoBox.length; i++)
              {
                doneToDoList.add(doneToDoBox.get(i)),
              }
          }
        : doneToDoList.length > doneToDoBox.length
            ? {
                for (int i = 0; i < doneToDoBox.length; i++)
                  {
                    doneToDoList.add(doneToDoBox.get(i)),
                  }
              }
            : null;
  }

  //add data to not done box
  void addDataToNotDoneBox({
    required String subject,
    required String description,
    required bool hasDateTime,
    required DateTime dateTime,
  }) {
    notDoneToDoBox.add([
      subject,
      description,
      hasDateTime ? dateTime : null,
    ]);
  }

  //add data to done box
  void addDataToDoneBox({
    required String subject,
    required String description,
    required bool hasDateTime,
    required DateTime dateTime,
  }) {
    doneToDoBox.add([
      subject,
      description,
      hasDateTime ? dateTime : null,
    ]);
  }

  //delete data from not done data
  void deleteDataFromNotDoneBox({
    required int itemNumber,
  }) {
    notDoneToDoBox.delete(itemNumber);
  }

  //delete data from done data
  void deleteDataFromDoneBox({
    required int itemNumber,
  }) {
    doneToDoBox.delete(itemNumber);
  }

  //transfering datas
  void transferDataFromDoneBoxToNotDoneBox({
    required String subject,
    required String description,
    required DateTime? dateTime,
    required int itemNumber,
  }) {
    notDoneToDoBox.add([
      subject,
      description,
      dateTime,
    ]);
    doneToDoBox.delete(itemNumber);
  }

  //transfering datas
  void transferDataFromNotDoneBoxToDoneBox({
    required String subject,
    required String description,
    required DateTime? dateTime,
    required int itemNumber,
  }) {
    doneToDoBox.add([
      subject,
      description,
      dateTime,
    ]);
    notDoneToDoBox.delete(itemNumber);
  }
}
