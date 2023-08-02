import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  //declaring variables
  double ans = 0, oprtn = 0, num1 = 0, num2 = 0, avrg = 0, min = 0, max = 0;
  String answer = '0', stravrg = '0';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController num1controller = TextEditingController();
  final TextEditingController num2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: SafeArea(
        child: Scaffold(
          body: calculatorBody(),
        ),
      ),
    );
  }

  //body
  Container calculatorBody() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        //background color
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 12, 51, 83),
            Color.fromARGB(255, 9, 21, 48),
          ],
        ),
      ),
      //body content
      child: Container(
        padding: const EdgeInsets.all(100),
        child: Column(
          children: [
            //input area reference
            inputarea(num1controller),
            spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Text(
                    'Select operation : ',
                    style: TextStyle(color: Colors.white),
                  ),
                  //spacer reference
                  spacer(),
                  ElevatedButton(
                    style: operationbuttonstyle(),
                    onPressed: () {
                      oprtn = 1;
                    },
                    child: const Text(
                      '* Multiply',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  spacer(),
                  ElevatedButton(
                    style: operationbuttonstyle(),
                    onPressed: () {
                      oprtn = 2;
                    },
                    child: const Text(
                      '/ Divide',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  spacer(),
                  ElevatedButton(
                    style: operationbuttonstyle(),
                    onPressed: () {
                      oprtn = 3;
                    },
                    child: const Text(
                      '+ Add',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  spacer(),
                  ElevatedButton(
                    style: operationbuttonstyle(),
                    onPressed: () {
                      oprtn = 4;
                    },
                    child: const Text(
                      '- Subtract',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            spacer(),
            //input area reference
            inputarea(num2controller),
            spacer(),
            //computation area. Will only run after clicking answer button
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    style: operationbuttonstyle(),
                    onPressed: () {
                      formKey;
                      if (oprtn == 0) {
                        ans = 0;
                        changeanswerdisplay();
                      } else if (oprtn == 1) {
                        num1 = double.parse(num1controller.text);
                        num2 = double.parse(num2controller.text);
                        ans = num1 * num2;
                        changeanswerdisplay();
                      } else if (oprtn == 2) {
                        num1 = double.parse(num1controller.text);
                        num2 = double.parse(num2controller.text);
                        ans = num1 / num2;
                        changeanswerdisplay();
                      } else if (oprtn == 3) {
                        num1 = double.parse(num1controller.text);
                        num2 = double.parse(num2controller.text);
                        ans = num1 + num2;
                        changeanswerdisplay();
                      } else if (oprtn == 4) {
                        num1 = double.parse(num1controller.text);
                        num2 = double.parse(num2controller.text);
                        ans = num1 - num2;
                        changeanswerdisplay();
                      }
                    },
                    child: const Text(
                      'Answer = ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  spacer(),
                  Text(
                    answer,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      additionalanswer(
                        'Average :  ',
                        avrg.toString(),
                      ),
                      spacer(),
                      additionalanswer(
                        'Min :  ',
                        min.toString(),
                      ),
                      spacer(),
                      additionalanswer(
                        'Max :  ',
                        max.toString(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //--------Module and Function area---------

//spacer for viewport
  SizedBox spacer() {
    return const SizedBox(
      height: 20,
      width: 20,
    );
  }

//label for additional answer
  Text additionalanswer(String addanslabel, String addansinput) {
    return Text(
      addanslabel + addansinput,
      style: const TextStyle(color: Colors.white),
    );
  }

//additional computation min, av...
  void additionalcomputation() {
    avrg = (num1 * num2) / 2;

    if (num1 >= num2) {
      max = num1;
      min = num2;
    } else {
      max = num2;
      min = num1;
    }
  }

//input area
  TextField inputarea(TextEditingController input) {
    return TextField(
      controller: input,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

//button style
  ButtonStyle operationbuttonstyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

//setting state for changing text for answer
  void changeanswerdisplay() {
    additionalcomputation();
    setState(
      () {
        answer = ans.toString();
        stravrg = avrg.toString();
      },
    );
  }
}
