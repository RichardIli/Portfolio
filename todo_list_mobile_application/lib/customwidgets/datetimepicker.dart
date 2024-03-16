import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/theme.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({
    super.key,
  });

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

DateTime dueDateTime = DateTime.now();

class _DateTimePickerState extends State<DateTimePicker> {
  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: dueDateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      // ignore: use_build_context_synchronously
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(dueDateTime),
      );
      if (pickedTime != null) {
        setState(() {
          dueDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: customDateTimeButtonTheme,
      child: Column(
        children: [
          TextButton.icon(
            label: Text(
              '${dueDateTime.year}/${dueDateTime.month}/${dueDateTime.day} - ${dueDateTime.hour}:${dueDateTime.minute}',
              style: const TextStyle(color: Colors.black),
            ),
            onPressed: () {
              _selectDateTime(context);
            },
            icon: const Icon(Icons.calendar_month),
          ),
        ],
      ),
    );
  }
}
