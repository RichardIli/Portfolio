import 'package:flutter/material.dart';
import 'package:todo_list_mobile_application/Themes&Routes/theme.dart';

class Donepage extends StatelessWidget {
  const Donepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: mainCustomTheme,
      child: Scaffold(
        body: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
