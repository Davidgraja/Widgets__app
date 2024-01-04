import 'package:flutter/material.dart';

class ColorFilteredScreen extends StatelessWidget {
  const ColorFilteredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const _ColorFilteredScreen(),
    );
  }
}


class _ColorFilteredScreen extends StatelessWidget {
  const _ColorFilteredScreen();

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: SingleChildScrollView(
        child: Column(
          children: [

          Text('ColorFiltered  esta creado especialmente para añadir o decolorar widgets los caules no permiten añadir un color reapidamente o simplemente el comportamiento no es el deseado , por ejemplo en una imagen , claramente se puede aplicar sobre cualquier widget' , textAlign: TextAlign.center,),  

          SizedBox(height: 20,),

          _CustomSquareImage(),

          SizedBox(height: 20,),

          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.amber, BlendMode.modulate),
            child: _CustomSquareImage()
          ),

          SizedBox(height: 20,),

          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.red, BlendMode.modulate),
            child: _CustomSquareImage()
          ),

          SizedBox(height: 20,),


          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.pinkAccent, BlendMode.multiply),
            child: _CustomSquareImage()
          ),
        ],
        ),
      ),
    );
  }
}


class _CustomSquareImage extends StatelessWidget {

  const _CustomSquareImage();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.7,
      height: 220,
      child: Image.asset('assets/images/5.png'),
    );
  }
 }