import 'dart:async';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() => runApp(MyApp());

class Todo {
  final int id;
  final String title;

  Todo({
    required this.id,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
    };
  }

  @override
  String toString() {
    return 'Todo{id: $id, title: $title}';
  }
}

class DatabaseHelper {
  late Database _database;

  Future<void> openDatabaseAndCreateTable() async {
    _database = await openDatabase(
      join(await getDatabasesPath(),
          'todo_database_v2.db'), // Change database name here
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE IF NOT EXISTS todos(id INTEGER PRIMARY KEY, title TEXT)',
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
        title: todoMaps[i]['title'],
      );
    });
  }
}

class MyApp extends StatelessWidget {
  final DatabaseHelper databaseHelper = DatabaseHelper();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQFlite Todo Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(databaseHelper: databaseHelper),
    );
  }
}

class HomePage extends StatefulWidget {
  final DatabaseHelper databaseHelper;

  const HomePage({super.key, required this.databaseHelper});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    widget.databaseHelper.openDatabaseAndCreateTable();
  }

  Future<List<Todo>> getAllTodos() async {
    List<Todo> todos = await widget.databaseHelper.getTodos();
    return todos;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQFlite Todo Demo'),
      ),
      body: FutureBuilder<List<Todo>>(
        future: getAllTodos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<Todo> todos = snapshot.data ?? [];
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos[index].title),
                  // Add any additional properties here
                );
              },
            );
          }
        },
      ),
    );
  }
}
