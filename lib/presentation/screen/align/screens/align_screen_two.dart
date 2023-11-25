import 'package:flutter/material.dart';

///  Podemos alinear nuestros widgets con valores numericos  con rangos que van desde el -1 al 1 tanto en el eje y como en eje x ,
///  tal y como se ve en el ejemplo

class AlignScreenTwo extends StatelessWidget {
  static const String name = 'align_screen_two';
  const AlignScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
      
            Align(
              alignment: Alignment.topCenter,
              child: _CustomText(value: '-1y',)
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: _CustomText(value: '+1y',)
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: _CustomText(value: '-1x',)
            ),
      
            Align(
              alignment: Alignment.centerRight,
              child: _CustomText(value: '+1x',)
            ),
            
            Align(
              alignment: Alignment(0, 0.79),
              child: CustomBox(),
            ),

          ],
        ),
      ),
    );
  }
}

class _CustomText extends StatelessWidget {
  final String value;
  const _CustomText({required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(value , style: const TextStyle(fontSize: 30),);
  }
}

class CustomBox extends StatelessWidget {
  const CustomBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      color: Colors.blueAccent,
    );
  }
}