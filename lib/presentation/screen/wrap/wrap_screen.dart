import 'package:flutter/material.dart';

class WrapScreen extends StatelessWidget {

  static const String  name  = 'wrap_screen';
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text('Wrap Widget'),
      ),
      body: const SingleChildScrollView(
        child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 10) ,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Text('Problema que soluciona el wrap , como se ve podemos caer en el caso de que el tamaño del Row o Column crece tanto que sobre pasa el overflow , por esto flutter nos genera el error que vemos en pantalla'),
                
                SizedBox(height: 5,),
        
                Row(                
                  children: [
                    CustomWrap(text: 'God of war',),
                    CustomWrap(text: 'Call of dutty',),
                    CustomWrap(text: 'Spider man',),
                    CustomWrap(text: 'Far cry',),
        
                  ],
                ),
        
                SizedBox(height: 20,),
        
        
                Text('Es este el problema que soluciona el wrap , ya que si no encuentra espacion donde colocar a sus hijos , creara un tramo adyacente para acomodarlos ahi'),
        
                SizedBox(
                  width: double.infinity,
                  child: Text('Si usamos el Wrap podemos evitar tal error' , textAlign: TextAlign.start, ),
                ),
                
                SizedBox(height: 5,),
        
                Wrap(   
                  children: [
                    CustomWrap(text: 'God of war',),
                    CustomWrap(text: 'Call of dutty',),
                    CustomWrap(text: 'Spider man',),
                    CustomWrap(text: 'Far cry',),
        
                  ],
                ),
                
                SizedBox(height: 20,),
        
        
                Text('con su propiedad Spacing controlamos el espaciado entre los hijos , con la propieda runSpacing controlamos el espacio entre los tramos en el eje transversal y con su propiedad alignment controlamos el alineamiento de los elementos dentro del wrap' ),
        
                SizedBox(height: 5,),
        
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  spacing: 4.0,   
                  runSpacing: 10.0,
                  children: [
                    CustomWrap(text: 'God of war',),
                    CustomWrap(text: 'Call of dutty',),
                    CustomWrap(text: 'Spider man',),
                    CustomWrap(text: 'Far cry',),
                  ],
                ),
      
                SizedBox(height: 20,),
      
                Text('con su propiedad direction controlamos la dirección del eje , ya sea vertical horizontal' ),

                SizedBox(height: 5,),

                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 4.0,
                    runSpacing: 10.0,

                    direction: Axis.vertical,
                    children: [
                      CustomWrap(text: 'God of war',),
                      CustomWrap(text: 'Call of dutty',),
                      CustomWrap(text: 'Spider man',),
                      CustomWrap(text: 'Far cry',),
                      CustomWrap(text: 'Far cry primal',),
                      CustomWrap(text: 'Mortal Combat 1',),
                    ],
                  ),
                ),
      
              ],
            ),
          ),
        ),
      )
    );
  }
}

class CustomWrap extends StatelessWidget {
  
  final String text;
  
  const CustomWrap({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.white,
        child:  Text(text[0]),
      ),
      label: Text( text  , style: const TextStyle(color: Colors.white),),
      backgroundColor: Colors.blueAccent,
    );
  }
}