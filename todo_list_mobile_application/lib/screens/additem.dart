import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/theme.dart';
import 'package:todo_list_mobile_application/customwidgets/appbar.dart';
import 'package:todo_list_mobile_application/customwidgets/datetimepicker.dart';

class AddItemWindow extends StatefulWidget {
  const AddItemWindow({super.key});

  @override
  State<AddItemWindow> createState() => _AddItemWindowState();
}

class _AddItemWindowState extends State<AddItemWindow> {
  final TextEditingController subjectTextFieldController =
      TextEditingController();
  final TextEditingController descriptionTextFieldController =
      TextEditingController();

  String subjectErrorText = '', descriptionErrorText = '';
  bool subjectFilled = false, descriptionFilled = false;

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
        ? //put the adding items to sql function
        {Navigator.pop(context)}
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: customLightTheme,
      child: Scaffold(
        appBar: const CustomAppBar(),
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
              const Text('Enter Duedate and Duetime'),
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
