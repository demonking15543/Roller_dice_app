import 'package:auth_sdk/text_container.dart';
import 'package:flutter/material.dart';


class GradientContainer  extends StatelessWidget{
  const GradientContainer(this.color1, this.color2, {super.key});
    // initialize the constructor
    void rollDice(){
      //
      
    }
    final Color color1;
    final Color color2;


  @override
  Widget build(context){

    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors:[color1, color2]

          
          ,
          begin: Alignment.topLeft,
            end: Alignment.bottomRight,

                  )
      ),
      child:  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/dice_1.png', width: 200,),
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
      )
      ),
    );
  }
}