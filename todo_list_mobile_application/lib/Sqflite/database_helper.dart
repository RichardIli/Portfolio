import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todo_list_mobile_application/Sqflite/todo_model.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await initDatabase();
    return _database;
  }

  DatabaseHelper.internal();

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'todo.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE todo (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            description TEXT,
            due TEXT,
            isCompleted INTEGER
          )
        ''');
      },
    );
  }

  Future<int> insertTodo(Todo todo) async {
    Database? db = await database;
    return await db!.insert('todo', todo.toMap());
  }

  Future<List<Todo>> getTodos() async {
    Database? db = await database;
    List<Map<String, dynamic>> maps = await db!.query('todo');
    return List.generate(maps.length, (i) {
      return Todo.fromMap(maps[i]);
    });
  }
}
