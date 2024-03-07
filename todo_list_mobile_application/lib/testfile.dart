import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Combined Date and Time Selector'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DateTimeSelectorScreen(),
              ),
            );
          },
          child: const Text('Select Date and Time'),
        ),
      ),
    );
  }
}

class DateTimeSelectorScreen extends StatefulWidget {
  const DateTimeSelectorScreen({super.key});

  @override
  _DateTimeSelectorScreenState createState() => _DateTimeSelectorScreenState();
}

class _DateTimeSelectorScreenState extends State<DateTimeSelectorScreen> {
  DateTime selectedDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Date and Time'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Selected Date and Time: ${DateFormat('yyyy-MM-dd HH:mm').format(selectedDateTime)}',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _selectDateTime(context),
            child: const Text('Select Date and Time'),
          ),
        ],
      ),
    );
  }

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(selectedDateTime),
      );

      if (pickedTime != null) {
        setState(() {
          selectedDateTime = DateTime(
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
}
