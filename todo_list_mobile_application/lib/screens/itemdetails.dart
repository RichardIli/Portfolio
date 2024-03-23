import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/theme.dart';
import 'package:todo_list_mobile_application/utilities/appbar.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? passedData =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    final String subject = passedData?['subject'];
    final String description = passedData?['description'];
    final DateTime dateTime = passedData?['datetime'];

    return Theme(
      data: customLightTheme,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListView(
                  children: [
                    ListContent(
                      subject: subject,
                      fontsize: 20,
                    ),
                    ListContent(
                        subject:
                            'Date: ${dateTime.year}-${dateTime.month}-${dateTime.day}    Time:${dateTime.hour}:${dateTime.minute}'),
                    ListContent(subject: description),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListContent extends StatelessWidget {
  final double? fontsize;
  const ListContent({super.key, required this.subject, this.fontsize});

  final String subject;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade400,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          subject,
          style: TextStyle(fontSize: fontsize),
        ),
      ),
    );
  }
}
