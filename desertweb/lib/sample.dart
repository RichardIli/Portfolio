import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double scaleFactor = MediaQuery.of(context).size.width /
              600.0; // Adjust 600.0 to your desired initial width

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Example text
                Text(
                  'Resizable Text',
                  style: TextStyle(
                    fontSize: 20.0 * scaleFactor,
                  ),
                ),
                // Example image
                Image.asset(
                  'lib/Assets/c-removebg-preview.png', // Replace with your image path
                  width: 100.0 * scaleFactor, // Adjust size accordingly
                  height: 100.0 * scaleFactor,
                ),
                // Add more widgets as needed
              ],
            ),
          );
        },
      ),
    );
  }
}
