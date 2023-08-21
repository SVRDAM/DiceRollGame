import 'dart:math';

import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RollDiceGenerator();
  }
}

class _RollDiceGenerator extends State<RollDice> {
  String activeImage = "assets/images/dice-1.png";
  void rollDice() {
    final randomizer = Random().nextInt(6);
    List<String> images = [
      "assets/images/dice-1.png",
      "assets/images/dice-2.png",
      "assets/images/dice-3.png",
      "assets/images/dice-4.png",
      "assets/images/dice-5.png",
      "assets/images/dice-6.png",
    ];
    setState(() {
      activeImage = images[randomizer];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              activeImage,
              height: 300,
              width: 300,
            ),
            TextButton(
                onPressed: rollDice,
                child: const Text(
                  "Roll Dice",
                  style: TextStyle(
                      fontSize: 50,
                      backgroundColor: Colors.red,
                      color: Colors.white),
                ))
          ]),
    );
  }
}
