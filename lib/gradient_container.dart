import 'package:auth_sdk/text_container.dart';
import 'package:flutter/material.dart';


class GradientContainer  extends StatelessWidget{
  const GradientContainer({super.key});
    // initialize the constructor

  @override
  Widget build(context){

    return Container(
      decoration:const  BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 90),

          
          ],
          begin: Alignment.topLeft,
            end: Alignment.bottomRight,

                  )
      ),
      child: const Center(
      child: CustomText("Hello world")
      ),
    );
  }
}