import 'package:flutter/material.dart';

class FadeInImageScreen extends StatelessWidget {
  static const String name = 'fade_in_image_screen';
  const FadeInImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/images/fade-loading.gif'),
            image:  NetworkImage('https://picsum.photos/id/237/800/600'), 
          ),
        ),
      ),
      
    );
  }

}
// NetworkImage('https://picsum.photos/id/237/800/600')
// AssetImage('assets/images/fade-loading.gif') 