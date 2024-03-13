import 'package:todo_list_mobile_application/Sqflite/database_helper.dart';
import 'package:todo_list_mobile_application/Sqflite/todo_model.dart';

class AddItemToDBClass {
  DatabaseHelper databaseHelper = DatabaseHelper();
  final String subject;
  final String description;
  final DateTime? due;
  final bool isCompleted;

  AddItemToDBClass({
    required this.subject,
    required this.description,
    this.due,
    required this.isCompleted,
  });

  Future<void> addItemToDBFutureVoid() async {
    // Example of adding a todo
    Todo newTodo = Todo(
      subject: subject,
      description: description,
      due: due,
      isCompleted: isCompleted,
    );

    await databaseHelper.insertTodo(newTodo);
  }

  Future<List<Todo>> getAllTodos() async {
    // Example of fetching todos
    List<Todo> todos = await databaseHelper.getTodos();
    return todos;
  }
}
