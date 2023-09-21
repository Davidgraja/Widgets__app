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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:LayoutBuilder(
        builder: (context, constraints) => constraints.maxWidth > 360 ? const _SlideHorizontalLayout() : const  _SlideVerticalLayout() 
      )
    );
  }
}


class _SlideHorizontalLayout extends StatefulWidget {
  const _SlideHorizontalLayout();

  @override
  State<_SlideHorizontalLayout> createState() => _SlideHorizontalLayoutState();
}

class _SlideHorizontalLayoutState extends State<_SlideHorizontalLayout> {

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
    return Stack(
      children: [
        PageView(
          controller: pageController,
          physics: const BouncingScrollPhysics(),
          children: slides.map((slide) => _SlideHorizontal(title: slide.title, caption: slide.caption, imageUrl: slide.imageUrl) ).toList()   
        ),
        Positioned(
          top: 40,
          right: 20,
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
        ) :  const SizedBox()
        
      ],
    );
  }
}


class _SlideHorizontal extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _SlideHorizontal({required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    // Acceder a estilos de texto del tema general
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Row(
          children: [
            // Image(image: AssetImage(imageUrl)),
            Container( constraints: BoxConstraints(maxWidth:size.width * 0.5 ), child:Image.asset(imageUrl ,fit: BoxFit.cover),),
           
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title , style: titleStyle,),
                const SizedBox(height: 10.0,),
                SizedBox(
                  width: size.width * 0.3,
                  child: Text(caption , style: captionStyle,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


class _SlideVerticalLayout extends StatefulWidget {
  const _SlideVerticalLayout();

  @override
  State<_SlideVerticalLayout> createState() => _SlideVerticalLayoutState();
}

class _SlideVerticalLayoutState extends State<_SlideVerticalLayout> {

  
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
    return Stack(
    children: [
        PageView(
          controller:  pageController,
          physics: const BouncingScrollPhysics(),
          children: slides.map((slideData) => _SlideVertical(title: slideData.title, caption: slideData.caption, imageUrl: slideData.imageUrl)).toList(),
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
    ); 
  }
}


class _SlideVertical extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _SlideVertical({required this.title, required this.caption, required this.imageUrl});

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