import 'package:flutter/material.dart';

import 'package:desertweb/customwidgets/header.dart';
import 'package:desertweb/customwidgets/navbar.dart';
import 'package:desertweb/themesstyle/themes.dart';
import 'package:desertweb/customwidgets/footer.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Header(),
              const Navbar(),
              SizedBox(
                width: double.infinity,
                height: 800,
                child: Stack(
                  children: [
                    Image.network(
                      'https://images.pexels.com/photos/907142/pexels-photo-907142.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      width: double.infinity,
                      fit: BoxFit
                          .cover, //automatically crop the image to the size of its parrent
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Delicious Dessert \nSet The Right Mood',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            side: MaterialStateProperty.all<BorderSide>(
                              const BorderSide(
                                color: Colors.yellow,
                                width: 2,
                              ),
                            ),
                          ),
                          child: const Text(
                            'Order now',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ],
                    )
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
