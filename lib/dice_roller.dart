import 'package:flutter/material.dart';
import 'package:basics/styled_text.dart';
import 'dart:math';

final randomize = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

var currentRollDice = randomize.nextInt(6) + 1; // parte da 0 e arriva a 5 quindi +1
  void rollDice() {
    setState(() {
      currentRollDice = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentRollDice.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
            // onPressed: (){},
            onPressed: rollDice,
            // style: TextButton.styleFrom(
            //   backgroundColor: Colors.white,
            // padding: const EdgeInsets.all(20),
            // textStyle: const TextStyle(
            //   fontSize: 30,
            //   fontWeight: FontWeight.bold,
            // ),
            // ),
            child: const StyledText('Roll Dice')),
      ],
    );
  }
}
