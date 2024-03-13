import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/theme.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({
    super.key,
  });

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

DateTime duedate = DateTime.now();
TimeOfDay duetime = TimeOfDay.now();

class _DateTimePickerState extends State<DateTimePicker> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: duedate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != duedate) {
      setState(() {
        duedate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: duetime,
    );
    if (picked != null && picked != duetime) {
      setState(() {
        duetime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: customDateTimeButtonTheme,
      child: Column(
        children: [
          Row(
            children: [
              const Text('Date :'),
              TextButton.icon(
                label: Text(
                  '${duedate.year}-${duedate.month}-${duedate.day}',
                  style: const TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  _selectDate(context);
                },
                icon: const Icon(Icons.calendar_month),
              ),
            ],
          ),
          Row(
            children: [
              const Text('Time :'),
              TextButton.icon(
                label: Text(
                  '${duetime.hour}:${duetime.minute}',
                  style: const TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  _selectTime(context);
                },
                icon: const Icon(Icons.timer_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
