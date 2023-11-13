import 'package:flutter/material.dart';

class CustomPainterScreen extends StatelessWidget {
  static const name = 'custom_painter_screen';
  const CustomPainterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Primer ejemplo
            const Text('Ejemplo 1 , haciendo uso de lineTo'),
            const SizedBox(height: 10,),
            _CustomSquare( painter: MyFirstCustomPainter(),),

            const SizedBox(height: 20,),

            // Segundo ejemplo
            const Text('Ejemplo 2 , haciendo uso de moveTo y lineTo'),
            const SizedBox(height: 10,),
            _CustomSquare( painter: MySecondCustomPainter(),),
          ],
        ),
      ),
    );
  }
}

class _CustomSquare extends StatelessWidget {
  final CustomPainter painter;
  const _CustomSquare({ required this.painter});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 240,
      color:  Colors.black12,
      child: CustomPaint(            
        painter: painter,
      ),
    );
  }
}

class MyFirstCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final paint =  Paint()
                      ..color = const Color(0xff00307E)
                      ..strokeWidth = 5.0
                      ..strokeCap = StrokeCap.round
                      ..style = PaintingStyle.stroke;

    final path = Path()
                    ..lineTo(size.width * 0.5 , 0)
                    ..lineTo( size.width * 0.5  , size.height * 0.5)
                    ..lineTo(0, size.height * 0.5)
                    ..lineTo(0, size.height)
                    ..lineTo(size.width , size.height)
                    ..lineTo(size.width , size.height * 0.5)
                    ..lineTo(size.width * 0.5 , size.height * 0.5 )
                    ..lineTo(size.width * 0.5 , 0 )
                    ..lineTo(size.width , 0 );


    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}

class MySecondCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

      final paint =  Paint()
                      ..color = const Color(0xff00307E)
                      ..strokeWidth = 5.0
                      ..strokeCap = StrokeCap.round
                      ..style = PaintingStyle.stroke;


      final path = Path()
                    // Primer lienzo vertical
                    ..moveTo( size.width * 0.3333 , 0)
                    ..lineTo( size.width * 0.3333 , size.height)

                    // Segundo lienzo vertical
                    ..moveTo( size.width * 0.6666 , 0)
                    ..lineTo( size.width * 0.6666 , size.height)

                    // Primer lienzo horizontal
                    ..moveTo( 0 , size.height * 0.3333)
                    ..lineTo( size.width , size.height * 0.3333)


                    // Segundo lienzo horizontal
                    ..moveTo( 0 , size.height * 0.6666)
                    ..lineTo( size.width , size.height * 0.6666);

        canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

/* 


 */