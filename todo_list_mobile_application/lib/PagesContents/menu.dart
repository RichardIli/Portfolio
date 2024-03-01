import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/Pages/donepage.dart';
import 'package:todo_list_mobile_application/Pages/todopage.dart';
import 'package:todo_list_mobile_application/Themes/theme.dart';

class Menu extends StatelessWidget {
  const Menu({
    super.key,
    required this.appBarHeight,
  });

  final double appBarHeight;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: appBarHeight + 10,
            child: DrawerHeader(
              decoration: const BoxDecoration(color: color1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Title(
                    color: color1,
                    child: const Text(
                      'Menu',
                      style: customDrawerTitleStyle,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_right_alt_rounded),
                  ),
                ],
              ),
            ),
          ),
          ListContent(
            txt: 'To - Do Task',
            navto: MaterialPageRoute(builder: (context) => const ToDopage()),
          ),
          ListContent(
            txt: 'Done Task',
            navto: MaterialPageRoute(builder: (context) => const Donepage()),
          )
        ],
      ),
    );
  }
}

class ListContent extends StatelessWidget {
  const ListContent({
    super.key,
    required this.txt,
    required this.navto,
  });

  final String txt;
  final MaterialPageRoute navto;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        txt,
        style: customListTitleStyle,
      ),
      onTap: () {
        Navigator.push(context, navto);
      },
    );
  }
}
