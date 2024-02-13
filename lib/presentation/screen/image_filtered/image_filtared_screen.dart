
import 'dart:ui';

import 'package:flutter/material.dart';

/// con ImageFiltered podemos hacer varias cosas , la primera es aplicar un efecto de desenfoque , la segunda es palicar un efecto de transformación , estas son unas de las 
/// muchas cosas que puede hacer este widget
class ImageFilteredScreen extends StatelessWidget {
  static const name = 'image_filtered_screen';
  const ImageFilteredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Stack(
          fit: StackFit.expand,
          children: [

            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Image.network('https://p4.wallpaperbetter.com/wallpaper/579/949/254/android-logo-wallpaper-preview.jpg')
            ),
            

            ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5
              ),
              child: Image.network('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjmvltxq_liOFQ5iLz7yFdL_zqywMQao2MKSdtHbLydxkTFpZI-tYkTw0x0CLVqKu_jKm_w9PnwY1rid7fsggYM5j8FI4gMOGfe_tIyFC0R0cB31oNSon__HqzyaT4lDmMDyyL3wFhODlDZIOuifjOLjY1AfDbR2_Y3-5E91euZWNeOEM0vnY94ChjY/s728-rw-ft-e30/android.png')
            ),


            // Forma de transformar un widget con ImageFiltered

            Align(
              alignment: const Alignment(0.0 , 0.8),
              child: ImageFiltered(
                imageFilter: ImageFilter.matrix(
                  Matrix4.rotationZ(0.4).storage
                ),
                child: const FlutterLogo(
                  size: 150,
                ),
              )
            )
          
          ],
        )
      ),
    );
  }
}