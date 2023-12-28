import 'package:flutter/material.dart';

class OpacityScreen extends StatelessWidget {
  static const String name = 'opacity_screen';
  const OpacityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: const Wrap(
          spacing: 50.0 ,
          direction: Axis.vertical,
          children: [
            _CustomBox(Colors.green , 1.0),
            _CustomBox(Colors.blue , 0.2),
            _CustomBox(Colors.amber , 1.0),
          ],
        ),
      ),
    );
  }
}


class _CustomBox extends StatelessWidget {
  final Color color;
  final double boxOpacity;
  const _CustomBox(this.color , this.boxOpacity);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: boxOpacity,
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 150,
        color: color,
        child: Text('opacity: $boxOpacity' , style: const TextStyle(fontSize: 18.0 , color: Colors.white),),
      ),
    );
  }
}