import 'package:desertweb/customwidgets/footer.dart';
import 'package:desertweb/customwidgets/header.dart';
import 'package:desertweb/customwidgets/navbar.dart';
import 'package:flutter/material.dart';

class Contactpage extends StatelessWidget {
  const Contactpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Header(),
            Navbar(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Get in Touch',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
