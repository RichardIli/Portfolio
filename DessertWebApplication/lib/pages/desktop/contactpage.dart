import 'package:desertweb/customwidgets/footer.dart';
import 'package:desertweb/customwidgets/header.dart';
import 'package:desertweb/customwidgets/navbar.dart';
import 'package:flutter/material.dart';

class Contactpage extends StatelessWidget {
  const Contactpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              const Navbar(),
              Padding(
                padding: const EdgeInsets.all(100),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.all(2.5),
                              child: Text(
                                'Get in Touch',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          const CustomTextField(
                            h: 300,
                            left: 0,
                            right: 0,
                            hinttext: 'Enter message',
                          ),
                          const Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  h: 60,
                                  left: 0,
                                  right: 2.5,
                                  hinttext: 'Enter your name',
                                ),
                              ),
                              Expanded(
                                child: CustomTextField(
                                  h: 60,
                                  left: 2.5,
                                  right: 0,
                                  hinttext: 'Email',
                                ),
                              ),
                            ],
                          ),
                          const CustomTextField(
                            h: 60,
                            left: 0,
                            right: 0,
                            hinttext: 'Enter Subject',
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 2.5,
                                bottom: 2.5,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(
                                      const Size(250, 70)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.yellow,
                                  ),
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Send',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LocationContact(
                            icon: Icons.house,
                            text: '123\n123 st., 123 city',
                          ),
                          Divider(
                            thickness: 20,
                            color: Colors.transparent,
                          ),
                          LocationContact(
                            icon: Icons.phone_android_sharp,
                            text: '123456789\nMon to Fri 9am to 6pm',
                          ),
                          Divider(
                            thickness: 20,
                            color: Colors.transparent,
                          ),
                          LocationContact(
                              icon: Icons.mail_outline_sharp,
                              text:
                                  '123456789@gmail.com \nSend us your query anytime!')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.h,
      required this.hinttext,
      required this.left,
      required this.right});

  final double h, left, right;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 2.5,
        bottom: 2.5,
        left: left,
        right: right,
      ),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.grey,
            width: 2.5,
          ),
        ),
        height: h,
        width: double.infinity,
        child: TextField(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class LocationContact extends StatelessWidget {
  const LocationContact({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.white,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
