import 'package:animate_do/animate_do.dart';
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


class AppTutorialScreen extends StatefulWidget {

  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      final page = pageController.page ?? 0;

      if(page >= (slides.length - 1.5)){
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller:  pageController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((slideData) => _Slide(title: slideData.title, caption: slideData.caption, imageUrl: slideData.imageUrl)).toList(),
          ),

          Positioned(
            top: 40.0,
            right: 20.0,
            child: TextButton(
              onPressed: (){
                context.pop();
              },
              child: const Text('Salir'),
            )
          ),

          endReached ?  
          Positioned(
            bottom: 30.0,
            right: 20.0,
            child: FadeInRight(
              from: 15,
              delay: const Duration(seconds: 1),
              child: FilledButton(
                onPressed: () => context.pop(),
                child: const Text('Comenzar'),
              ),
            )
          )
          : const SizedBox()
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
