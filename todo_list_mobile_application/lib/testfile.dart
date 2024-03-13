import 'package:todo_list_mobile_application/Sqflite/database_helper.dart';
import 'package:todo_list_mobile_application/Sqflite/todo_model.dart';

class AddItemToDBClas {
  DatabaseHelper databaseHelper = DatabaseHelper();

  Future<void> addItemToDBFutureVoid() async {
    // Example of adding a todo
    Todo newTodo = Todo(
      subject: 'Buy groceries',
      description: 'Milk, eggs, bread',
      isCompleted: false,
    );

    await databaseHelper.insertTodo(newTodo);
  }

  Future<List<Todo>> getAllTodos() async {
    // Example of fetching todos
    List<Todo> todos = await databaseHelper.getTodos();
    return todos;
  }
}
