import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/Themes/theme.dart';
import 'package:todo_list_mobile_application/customwidgets/appbar.dart';
import 'package:todo_list_mobile_application/customwidgets/donetasktab.dart';
import 'package:todo_list_mobile_application/customwidgets/todotasktab.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: const CustomAppBar(),
          body: Center(
            child: Column(
              children: [
                Theme(
                  data: customTabBArIndicatorTheme,
                  child: const TabBar(
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
                ),
                const Expanded(
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
