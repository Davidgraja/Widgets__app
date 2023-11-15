import 'dart:ui';
import 'package:flutter/material.dart';


 /// BackdropFilter por defecto va aplicar el filtro a los widgets que se encuentren detras de el ,su hijo y los widgets deleante de el no se veran afectados por el filtro
 /// se recomienda que trabajemos con Stack cuando trabajemos con este widget , ademas si lo que deseamos  es aplicar un filtro  en un lugar en especial  con la ayuda de los widgets Positioned y clipRect
 /// lo podemos lograr , con Positionend posicionamos el filtro exactamente donde queremos y con ClipRect recortamos el filtro para que no cubra toda la pantalla y demas widgets
 
 /// ? Como nota :  si lo que queremos es aplica run filtro a un solo widget , en lugar de aplicar tal filtro a todo lo que hay debajo  , podemos usar ImageFiltered , ya que es menos constoso que el BacdropFilter  
 

class BackdropFilterScreen extends StatelessWidget {
 
  static const name = 'backdrop_filter_screen';
  const BackdropFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [

          Center(
            child: Image.network('https://www.muycomputer.com/wp-content/uploads/2020/08/Android.jpg'),
          ),


          Positioned(
            top: 420,
            bottom: 340,
            left: 50,
            right: 50,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5 , sigmaY: 5),
                child: Container(),
              ),
            ),
          ),

        ],
      ),
    );
  }
}