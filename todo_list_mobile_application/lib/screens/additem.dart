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

  String _errorText = '';
  bool proceed = false;

  void _validateTextField() {
    subjectTextFieldController.text.isEmpty
        ? setState(
            () {
              _errorText = 'This field is required';
            },
          )
        : setState(
            () {
              _errorText = '';
            },
          );

    descriptionTextFieldController.text.isEmpty
        ? setState(
            () {
              _errorText = 'This field is required';
            },
          )
        : setState(
            () {
              _errorText = '';
            },
          );
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
                  errorText: _errorText.isNotEmpty ? _errorText : null,
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
                  errorText: _errorText.isNotEmpty ? _errorText : null,
                ),
              ),
              const Divider(
                color: Colors.transparent,
                thickness: 20,
              ),
              const Text('Enter Duedate'),
              const DateTimePicker(),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    _validateTextField();
                    // ignore: avoid_print
                    print(
                        '${subjectTextFieldController.text}\n${descriptionTextFieldController.text}\n$duedate\n$duetime');
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
