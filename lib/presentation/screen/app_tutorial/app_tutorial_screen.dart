import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);

}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'assets/images/1.png'),
  SlideInfo('Entrega rapida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'assets/images/3.png'),
];


class AppTutorialScreen extends StatelessWidget {

  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            children: slides.map((slideData) => _Slide(title: slideData.title, caption: slideData.caption, imageUrl: slideData.imageUrl)).toList(),
          ),

          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: (){
                context.pop();
              },
              child: Text('Salir'),
            )
          )
        ],
      ) ,
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    // Acceder a estilos de texto del tema general
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image(image: AssetImage(imageUrl)),
            Image.asset(imageUrl),
            const SizedBox(height: 20.0,),
            Text(title , style: titleStyle,),
            const SizedBox(height: 10.0,),
            Text(caption , style: captionStyle,),
          ],
        ),
      ) ,
    );
  }
}
