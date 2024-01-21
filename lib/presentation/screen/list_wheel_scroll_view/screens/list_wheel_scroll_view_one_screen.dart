import 'package:flutter/material.dart';

class ListWheelScroolViewOneScreen extends StatelessWidget {
  const ListWheelScroolViewOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _ListWheelScrollView() ,
    );
  }
}

class _ListWheelScrollView extends StatelessWidget {
  const _ListWheelScrollView();

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      onSelectedItemChanged: (value) => print(value), // se dispara cada vez que se enfoca un hijo en la lista
      diameterRatio: 2.0, // ajaustar el diametro de la rueda
      offAxisFraction: 0,   // sacar la rueda del eje principal   
      

      //useMagnifier: true, // usar un efecto de ampliación
     // magnification: 1.3,// valor del efecto de ampliación
     
      itemExtent: 120, 
      children: List.generate(25, (index) => _CustomSquare(
        myColor: index.isOdd ? Colors.red : null,
        width: 320,  
        child:  Text('$index'),
        )
      )
    );
  }
}

class _CustomSquare extends StatelessWidget {
  final double width;
  final Color color;
  final Widget child;
  const _CustomSquare({Color? myColor , required this.width , required this.child} ) : color = myColor ?? Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      width: width,
      alignment: Alignment.center,
      child: child,
    );
  }
 }