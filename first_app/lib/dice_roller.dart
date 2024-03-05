import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
 State<DiceRoller> createState() {
  return _DiceRollerState();
 }
}

class _DiceRollerState extends State<DiceRoller>{
final randomizer = Random();
   var currentDiceImage = 1;
  

  void rolldice(){
    setState(() {
      currentDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/dice-$currentDiceImage.png",                
                  width: 270
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                  onPressed: rolldice,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  textStyle: const TextStyle(fontSize: 20), 
                  foregroundColor: Colors.white, 
                  backgroundColor: const Color.fromARGB(255, 9, 35, 71)),
                   child: const Text("Roll Dice"),)
            ],
            ) ;
  }
  }

 
