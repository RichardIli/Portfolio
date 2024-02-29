import 'package:facebook_clone_mobile_application/pageproperties/appbar.dart';
import 'package:facebook_clone_mobile_application/pageproperties/navbar.dart';
import 'package:facebook_clone_mobile_application/theme.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: mainTheme,
      child: const Scaffold(
        appBar: CustomAppbar(),
        body: Center(
          child: SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Navbar(),
                  ListView.custom(childrenDelegate: childrenDelegate)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
