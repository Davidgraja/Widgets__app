import 'package:flutter/material.dart';

class PhysicalModelScreen extends StatelessWidget {
  const PhysicalModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  _PhysicalModelView(),
    );
  }
}

class _PhysicalModelView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          PhysicalModel(
            color: Colors.transparent,
            shadowColor: Colors.greenAccent.shade100,
            elevation: 12,
            borderRadius: BorderRadius.circular(8),
            child: Text('Flutter is amazing' , style: Theme.of(context).textTheme.titleLarge,)
          ),

          const SizedBox(height: 80),

          const PhysicalModel(
            color: Colors.transparent, // color de la sombra
            shape: BoxShape.rectangle, // forma de la sombra
            shadowColor: Colors.pink,
            elevation: 20,
            child: _CustomSquare( null, 120, 120),

          )

        ],
      ),
    );
  }
}

class _CustomSquare extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const _CustomSquare(Color? myColor , this.width , this.height) : color = myColor ?? Colors.blueAccent;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      color: color,
    );
  }
}