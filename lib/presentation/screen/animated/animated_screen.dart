import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

  static const name = 'animated_ screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double width  = 50.0;
  double heigth  = 50.0;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  void changeShape(){
    final random = Random();

    width = random.nextInt(300) + 50;
    heigth = random.nextInt(300) + 50;
    borderRadius = random.nextInt(100)+ 5;

    color = Color.fromRGBO(
      random.nextInt(255), // red
      random.nextInt(255), // green
      random.nextInt(255), // blue
      1// opacity
    );

    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds:300),
          width: width,
          height: heigth,
          curve: Curves.decelerate,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius)
          ),
        ) ,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),

      ),
    );
  }
}