import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_app/presentation/screen/inherited_widget_and_model/models/my_colors.dart';

class InheritedWidgetScreen extends StatefulWidget {
  static const String name = 'inherited_widget_screen';
  const InheritedWidgetScreen({super.key});

  @override
  State<InheritedWidgetScreen> createState() => _InheritedWidgetScreenState();
}

class _InheritedWidgetScreenState extends State<InheritedWidgetScreen> {

  Color color1 = Colors.tealAccent;
  Color color2 = Colors.amber;

  @override
  Widget build(BuildContext context) {
    //? clase provedora de información
    return  MyColorsW(
      color1:  color1,
      color2:  color2,
      child: Scaffold(
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Rectangulo1(),
              Rectangulo2(),
            ],
          ),
        ),
    
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              color1 = Color.fromRGBO(
                Random().nextInt(255),
                Random().nextInt(255),
                Random().nextInt(255), 
                1.0
              );

              color2 = Color.fromRGBO(
                Random().nextInt(255),
                Random().nextInt(255),
                Random().nextInt(255), 
                1.0
              );
            });
          } , 
          child: const Icon(Icons.edit),),
      ),
    );
  }
}


class Rectangulo1 extends StatelessWidget {
  const Rectangulo1({super.key});

  @override
  Widget build(BuildContext context) {
    final colorsW = context.dependOnInheritedWidgetOfExactType<MyColorsW>(); //? forma de acceder al widget provedor
    return Container(
      height: 150,
      width: 150,
      decoration:  BoxDecoration(
        color: colorsW!.color1
      ),
    );
  }
}


class Rectangulo2 extends StatelessWidget {
  const Rectangulo2({super.key});

  @override
  Widget build(BuildContext context) {

    final colorsW = context.dependOnInheritedWidgetOfExactType<MyColorsW>();

    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: colorsW!.color2
      ),
    );
  }
}