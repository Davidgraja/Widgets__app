import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';

class HeroRectTween extends StatelessWidget {
  static const String name = 'hero_rect_tween';
  const HeroRectTween ({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( title: const Text('Hero rect tween'),) ,
      body: Column(
        children: [
          
          ListTile(
            leading: Hero(
              tag: 'hero_defualt_tween',
              child: _CustomBox(
                size: const Size(50.0, 50.0),
                color: Colors.red.withOpacity(0.5),
              ),
            ),
            title: Text('este widget esta usando la interpolación recta predeterminada'),
          ),
          
          const SizedBox(height: 20,),
          
          ListTile(
            leading: Hero(
              tag: 'hero-custom-tween',
              createRectTween: (begin, end) {
                return MaterialRectCenterArcTween(begin: begin ,end: end);
                // return MaterialRectArcTween(begin: begin , end: end);

              },
              child: _CustomBox(
                color: Colors.blue.shade200,
                size: const Size(50.0, 50.0),
              ),
            ),
            title: const Text('este widget esta usando la interpolación recta personalizada')
          ),
          
          const SizedBox(height: 20,),
          
          ElevatedButton(
              onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const _SecondPage(),)),
              child: const Text('toque para activar el vuelo del héroe')
          )
          
        ],
      ) ,
    );
  }
}


class _CustomBox extends StatelessWidget {
  final Color color;
  final Size size;
  const _CustomBox({ required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: size.width,
        height: size.height ,
        color:  color,
    );
  }
}


class _SecondPage extends StatelessWidget {
  const _SecondPage();

  @override
  Widget build(BuildContext context) {
    // timeDilation = 15.0;  Si queremos aplicar un delay en la animacion podemos hacer uso de esta variable del paquete scheduler.dart o podemos definir un  flightShuttleBuilder personalizado


    return Scaffold(
      appBar: AppBar(title: Text('Second page'),),
      body: SizedBox(
        width: double.infinity,
        height: 500.0,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Hero(
                tag: 'hero-custom-tween',
                createRectTween: (begin, end) {
                  return MaterialRectCenterArcTween(begin: begin ,end: end);
                  // return MaterialRectArcTween(begin: begin , end: end);
                },
                child: _CustomBox(
                  size: const Size(300, 300),
                  color: Colors.blue.shade200
                )
            ),

            Hero(
                tag: 'hero_defualt_tween',
                child: _CustomBox(
                    size: const Size(300, 300),
                    color: Colors.red.withOpacity(0.5)
                )
            ),

          ],
        ),
      ),
    );
  }
}

