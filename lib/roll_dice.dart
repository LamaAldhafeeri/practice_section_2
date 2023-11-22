import 'package:flutter/material.dart';
import 'package:first_app/styledText.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();

}

class _DiceRollerState extends State<DiceRoller>{
  int currantDiceRoll = 1;

  rollDice(){
    currantDiceRoll = Random().nextInt(6)+1;
    setState(() {});
  }
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currantDiceRoll.png', width: 200, height: 200,),
        TextButton(onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 24)
            ),
            child: const StyledText('Roll Dice'))
      ],
    );
  }
}


