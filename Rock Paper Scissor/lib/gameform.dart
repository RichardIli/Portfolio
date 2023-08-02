import 'package:flutter/material.dart';
import 'dart:math';

// ignore: camel_case_types
class gamefrm extends StatefulWidget {
  const gamefrm({super.key});

  @override
  State<gamefrm> createState() => _gamefrmState();
}

// ignore: camel_case_types
class _gamefrmState extends State<gamefrm> {
  Random random = Random();
  List<String> img = [
    'p.png',
    'r.png',
    's.png',
  ];
  List<String> whw = ['Draw', 'P1 Wins', 'P2 Wins'];
  List<Color> clr = [Colors.blue, Colors.green, Colors.red];
  int player1state = 0, player2state = 0, p1rndm = 0, p2rndm = 0, wc = 0;
  late int p1stat, p2stat;

  @override
  //body of the programm
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 12, 51, 83),
            Color.fromARGB(255, 9, 21, 48),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          playerside(clr[player1state], p1rndm),
          spacer(),
          whowins(),
          spacer(),
          playerside(clr[player2state], p2rndm),
          spacer(),
          ElevatedButton(
            onPressed: () {
              p1rndm = random.nextInt(3);
              p2rndm = random.nextInt(3);
              determining_the_winner();
              setstate();
            },
            child: const Text('Play'),
          ),
        ],
      ),
    );
  }
//method and funtion section

//spacer
  SizedBox spacer() {
    return const SizedBox(
      height: 20,
    );
  }

//players container
  Container playerside(Color color, int rndmimage) {
    return Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 5,
            color: color,
          ),
        ),
        child: Image.asset(
          'image/${img[rndmimage]}',
        ));
  }

  // ignore: non_constant_identifier_names
  void determining_the_winner() {
    if (p1rndm == p2rndm) {
      wc = 0;
      p1stat = 0;
      p2stat = 0;
    } else if (p1rndm == 0 && p2rndm == 1) {
      wc = 1;
      p1stat = 1;
      p2stat = 2;
    } else if (p1rndm == 0 && p2rndm == 2) {
      wc = 2;
      p1stat = 2;
      p2stat = 1;
    } else if (p1rndm == 1 && p2rndm == 0) {
      wc = 2;
      p1stat = 2;
      p2stat = 1;
    } else if (p1rndm == 1 && p2rndm == 2) {
      wc = 1;
      p1stat = 1;
      p2stat = 2;
    } else if (p1rndm == 2 && p2rndm == 0) {
      wc = 1;
      p1stat = 1;
      p2stat = 2;
    } else if (p1rndm == 2 && p2rndm == 1) {
      wc = 2;
      p1stat = 2;
      p2stat = 1;
    }
  }

  void setstate() {
    return setState(
      () {
        player1state = p1stat;
        player2state = p2stat;
      },
    );
  }

  Text whowins() {
    return Text(
      whw[wc],
      style: const TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
    );
  }
}
