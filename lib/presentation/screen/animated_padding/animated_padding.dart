import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPaddingScreen extends StatefulWidget {
  static const name = 'animated_padding_screen';
  const AnimatedPaddingScreen({super.key});

  @override
  State<AnimatedPaddingScreen> createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {

   int _customPaddingOne = 4;
   int _customPaddingTwo = 4;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  _AnimatedView(_customPaddingOne , _customPaddingTwo),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
          _customPaddingOne = Random().nextInt(40) + 4;
          _customPaddingTwo = Random().nextInt(40) + 4;
          });
        },
        child:  const Icon(Icons.animation_outlined),
      ),
    );
  }
}

class _AnimatedView extends StatelessWidget {
  final int paddingOne;
  final int paddingTwo;
  const _AnimatedView(this.paddingOne , this.paddingTwo);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        AnimatedPadding(
          curve: Curves.fastOutSlowIn,
          padding: EdgeInsets.all(paddingOne.toDouble()),
          duration: const Duration(seconds: 1),
          child: _CustomSquare(null , paddingOne)
        ),

       const SizedBox(height: 20,),

        AnimatedPadding(
          curve: Curves.bounceOut,
          padding: EdgeInsets.all(paddingTwo.toDouble()),
          duration: const Duration(seconds: 1),
          child: _CustomSquare(Colors.red , paddingTwo)
        ),

      ],
    );
  }
}


class _CustomSquare extends StatelessWidget {
  final int paddingValue;
  final Color color;
  const _CustomSquare(Color? myColor , this.paddingValue) : color = myColor ?? Colors.blueAccent;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      alignment: Alignment.center,
      color: color,
      child: Text( 'Paddign : $paddingValue' , style: const TextStyle(color: Colors.white , fontSize: 18 ),),
    );
  }
}