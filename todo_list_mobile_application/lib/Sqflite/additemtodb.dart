import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
/*
class Todo {
  final int id;
  final String subject;
  final String description;
  final DateTime due;
  final int isCompleted;

  Todo({
    required this.id,
    required this.subject,
    required this.description,
    required this.due,
    required this.isCompleted,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'subject': subject,
      'description': description,
      'duedate': due,
      'iscompleted': isCompleted,
    };
  }

  @override
  String toString() {
    return 'Todo{id: $id, subject: $subject, description: $description, duedate: $due, iscompleted: $isCompleted}';
  }
}

class DatabaseHelper {
  late Database _database;

  Future<void> openDatabaseAndCreateTable() async {
    _database = await openDatabase(
      join(await getDatabasesPath(),
          'todo_database.db'), // Change database name here
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE IF NOT EXISTS todos(id INTEGER PRIMARY KEY, subject TEXT, description TEXT, duedate INTEGER, iscompleted: INTEGER)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertTodo(Todo todo) async {
    await _database.insert(
      'todos',
      todo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Todo>> getTodos() async {
    final List<Map<String, dynamic>> todoMaps = await _database.query('todos');
    return List.generate(todoMaps.length, (i) {
      return Todo(
        id: todoMaps[i]['id'],
        subject: todoMaps[i]['subject'],
        description: todoMaps[i]['description'],
        due: DateTime.fromMillisecondsSinceEpoch(todoMaps[i]['date']),
        isCompleted: todoMaps[i]['iscompleted'],
      );
    });
  }
}*/
