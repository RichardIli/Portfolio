import 'package:desertweb/customwidgets/footer.dart';
import 'package:flutter/material.dart';

import 'package:desertweb/customwidgets/header.dart';
import 'package:desertweb/customwidgets/navbar.dart';
import 'package:desertweb/themesstyle/themes.dart';

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
              Padding(
                padding: defaultpadding,
                child: Theme(
                  data: CustomThemes.customconatinertheme,
                  child: Container(
                    height: 100,
                  ),
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
