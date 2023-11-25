import 'package:flutter/material.dart';


/* 
  Con el widget Align poemos alinear en cualquier segun el tamaño del padre
  por defecto pordemos usar las propiedades ya predefinidos en la clase Aligment : Alignment.topLeft , Alignment.topRigth ...etc

  Tambien podemos hacer uso del Aling dentro de un Stack , como reemplazo hacia el widget Positioned. 
 */

class AlingScreenOne extends StatelessWidget {
  static const name = 'align_screen_one';
  const AlingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:  Stack(
        children: [

          Align(
              alignment: Alignment.topRight,
              child: _CustomBox()
          ),

          Align(
              alignment: Alignment.topLeft,
              child: _CustomBox(color: Colors.red,)
          ),


          Align(
              alignment: Alignment.bottomLeft,
              child: _CustomBox(color: Colors.green,)
          ),

          Align(
              alignment: Alignment.bottomRight,
              child: _CustomBox(color: Colors.amber)
          ),


          Align(
              child: _CustomBox(color: Colors.deepOrange)
           ),

        ],
      ) ,
    );
  }
}


class _CustomBox extends StatelessWidget {
  final Color color;

  const _CustomBox({ this.color = Colors.blueAccent});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color : color
    );
  }
}