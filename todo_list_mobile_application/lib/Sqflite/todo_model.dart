class Todo {
  int? id;
  String subject;
  String description;
  DateTime? due;
  bool isCompleted;

  Todo(
      {this.id,
      required this.subject,
      required this.description,
      this.due,
      required this.isCompleted});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'subject': subject,
      'description': description,
      'due': due,
      'isCompleted': isCompleted ? 1 : 0,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'],
      subject: map['title'],
      description: map['description'],
      due: map['due'],
      isCompleted: map['isCompleted'] == 1,
    );
  }
}
