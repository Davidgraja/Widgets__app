import 'package:flutter/material.dart';

/// Este widget es muy interesante ya que puedes jugar con la ralacion de anchura y altura al cual un hijo puede adaptarse
/// esto es muy util cuando queremos que un widget sin importar el tamaño de la pantalla se adapte y siga manteniendo dicho aspecto 
/// una forma sencilla de entenderlo  es  verlo como un widget que permite adaptar a su hijo sin importar el tamaño la pantalla , ya que este se encargara 
/// de leer y obtener el tamaño de la pantalla y en base a ese tamaño aplica dicho aspecto a su hijo , lo podemos ver tambien como la forma en como podemos
/// adaptar un widget a culquier tipo pantalla


///Algo a tener encuenta es de que si ponemos AspectRatio dentro de un Expanded , AspectRatio se vera forzado por su padre a expandirse
///esto nos puede sucer y la facil mas sencilla es envolver el AspectRatio dentro de un Align y de esa forma alinearlo en cualquier lugar de la pantalla

class AspectRatioScreen extends StatelessWidget {
  static const name = 'aspect_ratio_screen';
  const AspectRatioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRadio widget'),
        centerTitle: true,
      ),

      body:  const Column(
        children: [
      
         AspectRatio(
            aspectRatio: 6 / 1 ,
            child: Square( value: '6w / 1h', alignment: Alignment.center,),
          ),
      
         
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: AspectRatio(
                aspectRatio:  1 / 3 ,
                child: Square(  color: Colors.blueAccent , alignment: Alignment.center, value: '1w / 3h',),
              ),
            ),
          ),
      
        ],
      ),
    );
  }
}

class Square extends StatelessWidget {
  final AlignmentGeometry? alignment;
  final Color color;
  final String value;
  const Square({super.key , this.value = '' , this.color = Colors.red , this.alignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      color: color,
      child: Text(value , style: const TextStyle(color: Colors.white),),
    );
  }
}