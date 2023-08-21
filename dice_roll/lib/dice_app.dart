import 'package:dice_roll/roll_dice.dart';
import 'package:flutter/material.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text(
            "Dice Roll Game",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orange, Color.fromARGB(255, 245, 193, 39)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: const RollDice()),
      ),
    );
  }
}
