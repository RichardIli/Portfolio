import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/ThemesandRoutes/theme.dart';
import 'package:todo_list_mobile_application/utilities/appbar.dart';
import 'package:todo_list_mobile_application/utilities/donetasktab.dart';
import 'package:todo_list_mobile_application/utilities/todotasktab.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: customLightTheme,
      child: const DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: CustomAppBar(),
          body: Center(
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      child: TabBarContent(txt: 'To - Do Task'),
                    ),
                    Tab(
                      child: TabBarContent(
                        txt: 'Done Task',
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ToDoTab(),
                      Conta(clr: Colors.green),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TabBarContent extends StatelessWidget {
  const TabBarContent({
    super.key,
    required this.txt,
  });
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(txt),
    );
  }
}
