import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  static const  String name = 'animated_opacity_screen';
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {

  double boxOPacity = 1.0;
  // final rnd = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
        onPressed: (){
          setState(() {
            boxOPacity = Random().nextDouble(); 
          });
        },
        child: const Icon(Icons.opacity),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              width: 360,
              height: 360,
              child: Stack(
                children: [
                  SizedBox.expand(child: Image.network('https://www.santevet.es/uploads/images/es_ES/razas/american_staffordshire_terrier_seguro_santevet.jpeg' , fit: BoxFit.cover,)),
      
                  AnimatedOpacity(
                    curve: Curves.easeOutQuad,
                    duration: const  Duration( milliseconds: 600),
                    opacity: boxOPacity,
                    child: Container(
                     decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black12 , Colors.black87],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.0, 1.0]
                      )
                     ), 
                    ),
                  )
      
                ],
              ),
            ) ,
          )
        ),
      ),
    );
  }
}