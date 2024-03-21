import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/data/database.dart';

class TodoListContentCard extends StatefulWidget {
  final bool isCompleted;
  final String subject;
  final DateTime? selectedTime;
  final int itemNumber;
  final void Function() refresh;

  const TodoListContentCard({
    super.key,
    required this.isCompleted,
    required this.subject,
    required this.selectedTime,
    required this.itemNumber,
    required this.refresh,
  });

  @override
  State<TodoListContentCard> createState() => _TodoListContentCardState();
}

class _TodoListContentCardState extends State<TodoListContentCard> {
  Database db = Database();
  @override
  Widget build(BuildContext context) {
    var txt = widget.selectedTime == null
        ? 'Date: N/A    Time: N/A'
        : 'Date: ${widget.selectedTime?.month}-${widget.selectedTime?.day}    Time: ${widget.selectedTime?.hour}:${widget.selectedTime?.minute}';

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/itemdetails',
          arguments: widget.itemNumber,
        );
      },
      child: Card(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.subject,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(txt),
                ],
              ),
              Checkbox(
                value: widget.isCompleted,
                onChanged: (bool? newValue) {
                  widget.refresh;
                  setState(
                    () {
                      db.updateData(
                          itemNumber: widget.itemNumber,
                          isCompleted: newValue!);
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
