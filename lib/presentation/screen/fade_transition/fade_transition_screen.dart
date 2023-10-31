import 'package:flutter/material.dart';

class FadeTransitionScreen extends StatefulWidget {
  static const String name = 'fade_transition_screen';

  const FadeTransitionScreen({super.key});

  @override
  State<FadeTransitionScreen> createState() => _FadeTransitionScreenState();
}

//? El controlador trabaja conjuntamente con propiedades de los mixin TickerProviderStateMixin o SingleTickerProviderStateMixin dependiendo de la cantidad de controladores que tengamos dentro del widget
//? normalmente si solo estamos controlando uno solo usamos  SingleTickerProviderStateMixin , si tenemos mas de un controlador usamos TickerProviderStateMixin

class _FadeTransitionScreenState extends State<FadeTransitionScreen> with TickerProviderStateMixin {
  

  late AnimationController controllerRepeat;
  late AnimationController controllerNormal;

  late Animation<double> opacityRepeat;
  late Animation<double> opacityNormal;
  


  @override
  void initState() {
    super.initState();
    controllerRepeat = AnimationController(vsync: this , duration: const Duration(milliseconds: 1500));
    controllerNormal = AnimationController(vsync: this , duration: const Duration(milliseconds: 2000));

    opacityNormal = Tween(begin: 0.0 , end: 1.0).animate(controllerNormal);

    opacityRepeat = CurvedAnimation(parent: controllerRepeat , curve: Curves.bounceOut);

    controllerNormal.forward();
    controllerRepeat.repeat(reverse: true);
  }

  @override
  void dispose() {
    controllerRepeat.dispose();
    controllerNormal.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text('Animación iniciada nuevamente con controller.forward(from: 0.0) ' , textAlign: TextAlign.center,),
            const SizedBox(height: 5,),

            GestureDetector(
              onTap: (){
                controllerNormal.forward(from: 0.0);
              },
              child: FadeTransition( 
                opacity : opacityNormal ,
                child: const _CustomSquare(
                  color: Colors.pink,
                   child: Text('Clik me' , style: TextStyle(color: Colors.white , fontSize: 20),), 
                )
              )
            ),
            
            
            const SizedBox(height: 20,),


            const Text('Animación  repetitiva con  con la funcion controller.repeat(reverse: true) ' , textAlign: TextAlign.center,),
            const SizedBox(height: 5,),

            FadeTransition(
              alwaysIncludeSemantics: true,
              opacity: opacityRepeat,
              child: const _CustomSquare(color: Colors.blue,),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomSquare extends StatelessWidget {
  final Widget? child; 
  final Color color;
  const _CustomSquare({required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: color
      ),
      child: child,
    );
  }
}
