import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatelessWidget {
  const AnimatedCrossFadeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _AnimatedFadeView(),
    );
  }


}


class _AnimatedFadeView extends StatefulWidget {
  const _AnimatedFadeView();

  @override
  State<_AnimatedFadeView> createState() => _AnimatedFadeViewState();
}

class _AnimatedFadeViewState extends State<_AnimatedFadeView> {

  bool crossFadeState = true;

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
          Align(
          child: Container(
            alignment: Alignment.center,
            child: AnimatedCrossFade(
              crossFadeState: crossFadeState ? CrossFadeState.showFirst : CrossFadeState.showSecond , 
              duration: const Duration(milliseconds: 500),
              firstChild:  const _CustomImageAsset('assets/images/4.jpg'),
              secondChild:  const _CustomImageAsset('assets/images/5.png'),

              excludeBottomFocus: true,
              
              /// ? solo se aplica si los tamaños no son iguales 
              // sizeCurve: Curves.fastLinearToSlowEaseIn,
              // reverseDuration: Duration(seconds: 1), // duración de animacion global de forma inversa

              //? curves de animación
              // firstCurve: Curves.fastOutSlowIn,
              // secondCurve: Curves.elasticInOut,
             
             ///? layoutBuilder: permite reconstruir nuevamente los widgets cuando se animan , esto para evitar saltos de ui 
              /* layoutBuilder: (topChild, topChildKey, bottomChild, bottomChildKey) {
                return Stack(
                  children: [
                    Positioned(
                      key: bottomChildKey,
                      child: bottomChild
                    ),

                    Positioned(
                      key: topChildKey,
                      child: topChild
                    ),
                  ],
                );
              }, */

            ),
          ),
        ),

        Positioned(
          right: 20,
          bottom: 30,
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                crossFadeState = !crossFadeState;
              });
            },
            child: const Text('Animar')
          ),
        )
      ],  
    );
  }
}


class _CustomImageAsset extends StatelessWidget {
  final String directionImage;
  const _CustomImageAsset(this.directionImage);

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
      directionImage, 
      fit: BoxFit.cover, 
      width: 300, 
      height: 210,
    );
  }
}