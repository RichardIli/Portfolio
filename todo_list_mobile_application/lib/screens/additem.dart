import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/customwidgets/appbar.dart';

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
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
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
                decoration: const InputDecoration(
                  hintText: 'Enter Subject...',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const Divider(
                color: Colors.transparent,
                thickness: 20,
              ),
              const Text('Description :'),
              TextField(
                controller: descriptionTextFieldController,
                decoration: const InputDecoration(
                  hintText: 'Enter Description...',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    subjectTextFieldController.dispose();
    super.dispose();
  }
}
