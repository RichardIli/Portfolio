import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/theme.dart';
import 'package:todo_list_mobile_application/utilities/appbar.dart';
import 'package:todo_list_mobile_application/data/database.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  //database reference
  Database db = Database();

  // text editing controller
  final TextEditingController subjectTextFieldController =
      TextEditingController();
  final TextEditingController descriptionTextFieldController =
      TextEditingController();

  //variables
  bool hasDateTime = false;
  String subjectErrorText = '', descriptionErrorText = '';
  bool subjectFilled = false, descriptionFilled = false;
  DateTime dueDateTime = DateTime.now();

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

  //validate the inputs
  void _validateTextField() {
    subjectTextFieldController.text.isEmpty
        ? setState(
            () {
              subjectErrorText = 'This field is required';
              subjectFilled = false;
            },
          )
        : setState(
            () {
              subjectErrorText = '';
              subjectFilled = true;
            },
          );

    descriptionTextFieldController.text.isEmpty
        ? setState(
            () {
              descriptionErrorText = 'This field is required';
              descriptionFilled = false;
            },
          )
        : setState(
            () {
              descriptionErrorText = '';
              descriptionFilled = true;
            },
          );

    subjectFilled && descriptionFilled
        ? {
            setState(
              () {
                db.addDataToToDoBox(
                  subject: subjectTextFieldController.text,
                  description: descriptionTextFieldController.text,
                  hasDateTime: hasDateTime,
                  dueDateTime: dueDateTime,
                );
              },
            ),
            Navigator.pop(context),
          }
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: customLightTheme,
      child: Scaffold(
        appBar: CustomAppBar(
          iconbutton: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.refresh_rounded),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Subject :'),
              TextField(
                controller: subjectTextFieldController,
                decoration: InputDecoration(
                  hintText: 'Enter Subject...',
                  errorText:
                      subjectErrorText.isNotEmpty ? subjectErrorText : null,
                ),
              ),
              const Divider(
                color: Colors.transparent,
                thickness: 20,
              ),
              const Text('Description :'),
              TextField(
                controller: descriptionTextFieldController,
                decoration: InputDecoration(
                  hintText: 'Enter Description...',
                  errorText: descriptionErrorText.isNotEmpty
                      ? descriptionErrorText
                      : null,
                ),
              ),
              const Divider(
                color: Colors.transparent,
                thickness: 20,
              ),
              Row(
                children: [
                  const Text('Set Date and Time?'),
                  Checkbox(
                    activeColor: Colors.blue,
                    value: hasDateTime,
                    onChanged: (bool? newValue) {
                      setState(() {
                        hasDateTime = newValue!;
                      });
                    },
                  ),
                ],
              ),
              Theme(
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
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    _validateTextField();
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    subjectTextFieldController.dispose();
    descriptionTextFieldController.dispose();
    super.dispose();
  }
}
