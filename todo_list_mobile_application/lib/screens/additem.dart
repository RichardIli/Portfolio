import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/theme.dart';
import 'package:todo_list_mobile_application/utilities/appbar.dart';
import 'package:todo_list_mobile_application/utilities/datetimepicker.dart';
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
                db.addData(
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
        appBar: CustomAppBar(),
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
              const DateTimePicker(),
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
