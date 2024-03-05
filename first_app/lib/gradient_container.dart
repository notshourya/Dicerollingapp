import 'package:flutter/material.dart';

import "package:first_app/dice_roller.dart";

const startAlignment =Alignment.topCenter;
const endAlignment =Alignment.bottomCenter;

class GradientContainer extends StatelessWidget{
 const GradientContainer(this.color1,this.color2,this.color3,this.color4,this.color5,{super.key});

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;

 
  @override
  Widget build(context) {
    
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2, color3, color4, color5],  
                begin:startAlignment ,
                end: endAlignment,               
              ),
          ),
          child: const Center(
            child: DiceRoller(),
          )
        );
  }
}

