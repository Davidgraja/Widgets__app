import 'package:flutter/material.dart';

class ClipRRectClipOvalClipPathScreen extends StatelessWidget {
 
  static const String name = 'clips'; 
  const ClipRRectClipOvalClipPathScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text('ClipRRect' , style: TextStyle(fontSize: 22),),
            const SizedBox(height: 12,),
            ClipRRect(
              clipBehavior: Clip.hardEdge, //? crea los bordes con pixeles mas pronunciados 
              borderRadius: BorderRadiusDirectional.circular(20),
              child: _CustomSqure()
            ),

            const SizedBox(height: 40,),

            const Text('ClipOval' , style: TextStyle(fontSize: 22),),
            const SizedBox(height: 12,),
            ClipOval(
              child: _CustomSqure()
            ),

            const SizedBox(height: 40,),

            const Text('ClipPath' , style: TextStyle(fontSize: 22),),
            const SizedBox(height: 12,),
            ClipPath(
              clipper: MyCustomClipper(),
              child: _CustomSqure()
            )

          ],
        ),
      ),
    );
  }
}

class _CustomSqure extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black87
      ),
      width: 150 , 
      height: 150, 
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FlutterLogo( 
          style: FlutterLogoStyle.stacked, 
          textColor: Colors.white, 
        ),
      )
    );
  }
}


class MyCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {   

    ///? Podemos generar todo tipo de figuras en la siguiente pagina web : https://fluttershapemaker.com/
         
    Path path_0 = Path();
    path_0.moveTo(size.width*0.5031273,size.height*0.0039000);
    path_0.quadraticBezierTo(size.width*0.0944182,size.height*0.5020667,size.width*0.0018182,size.height*0.9966667);
    path_0.lineTo(size.width*1.0027273,size.height*0.9966667);
    path_0.quadraticBezierTo(size.width*0.9093273,size.height*0.5020333,size.width*0.5031273,size.height*0.0039000);
    path_0.close();

    return path_0;
    
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

}