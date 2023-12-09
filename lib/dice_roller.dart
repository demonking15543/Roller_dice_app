import 'package:flutter/material.dart';
import 'dart:math';
final randomizer= Random();

class RollerDice extends StatefulWidget{
 const RollerDice({super.key});

  @override
  State<RollerDice> createState() {
    return _DiceRollerState();
   
  }
}

class _DiceRollerState extends State<RollerDice>{
  var currentDiceNo = 2;
      void rollDice(){
        setState(() {
          currentDiceNo =randomizer.nextInt(6) + 1;


          
        });

      //
      
    }
      @override

  Widget build(context){
     
    return  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
                    "assets/images/dice_$currentDiceNo.png"
                    , width: 200,),
          const SizedBox(height:20),

          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(foregroundColor:Colors.white, 
            textStyle: const TextStyle(
              color: Colors.white,
               fontSize: 28,
            ),
            ),
            child: const Text("Roll Me"))
        ],
      );
  }

}