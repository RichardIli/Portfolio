import 'package:flutter/material.dart';

class Conta extends StatelessWidget {
  const Conta({super.key, required this.clr});
  final Color clr;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: clr,
        child: const Text('Hllo'),
      ),
    );
  }
}
