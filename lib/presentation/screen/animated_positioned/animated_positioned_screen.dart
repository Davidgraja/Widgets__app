import 'package:flutter/material.dart';

class AnimatedPostionedScreen extends StatelessWidget {
  static const name = 'animated_postioned_screen';
  const AnimatedPostionedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _AnimatedPositionedView(),
    );
  }
}


class _AnimatedPositionedView extends StatefulWidget {
  const _AnimatedPositionedView();

  @override
  State<_AnimatedPositionedView> createState() => _AnimatedPositionedViewState();
}

class _AnimatedPositionedViewState extends State<_AnimatedPositionedView> {
  bool showLogo = false;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final height  = size.height;
    final width = size.width;

    return Stack(
      children: [
        
        const Center(
          child: SizedBox(
            width: 130,
            height: 100,
            child: FlutterLogo(style: FlutterLogoStyle.horizontal),
          ),
        ),

        AnimatedPositioned(
          duration: const Duration(seconds: 2),
          curve: Curves.bounceOut,
          top: (showLogo) ? height * 0.29 : height * 0.4,
          left: width * 0.32,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary,
            ),
            alignment: Alignment.center,
            width: 150,
            height: 120,
            child: const Text('AnimatedPositioned' , style: TextStyle(color: Colors.white),),
          ),
        ),

        Align(
          alignment: const Alignment(0.8, 0.9),
          child: ElevatedButton.icon(
            onPressed: (){
              setState(() {
                showLogo = !showLogo;
              });
            },
            icon: const Icon( Icons.animation_outlined), 
            label: const Text('Animar'),
          ),
        )
      ],
    );
  }
}