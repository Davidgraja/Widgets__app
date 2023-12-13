import 'package:flutter/material.dart';

class LimitedBoxOneScreen extends StatelessWidget {
  static const name = 'limited_box_one_screen';
  const LimitedBoxOneScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
        
              Text('LimitedBox solo se aplica en un entorno o donde su widget padre no tenga restriciones , esto quiere decir que el ancho y alto deben deben de ser limitidos , solo en ese entorno se aplica este widget '),
      
              SizedBox(height : 10),
      
              Text('si por ejemplo tratamos de inplementar este widget directamente dentro del Scaffold , no tendra efecto alguno , pero en widgets como Column , Row , Wrap , ListView y todo widget que tenga un width o height ilimitado'),
              
              SizedBox(height : 10),

              Text('en este ejemplo se envolvio los widgets dentro de un Column , Widget que tiene un height ilimitado , por lo tanto podemos restringir la altura de los widgets , luego tenemos un Row el cual esta dentro del Column , en este si podremos restringir tanto el width como el height'),
              
              SizedBox(height : 10),
        

              Text('Column' , style: TextStyle(fontSize: 20),),
              
              SizedBox(height : 10),
              
              LimitedBox(
                maxHeight: 120,
                child: _CustomSquare()
              ),
        
              SizedBox(height : 20),

              Text('Column / Row' , style: TextStyle(fontSize: 20),),

              SizedBox(height : 10),

              Row(
              children: [
                LimitedBox(
                  maxWidth: 120,
                  maxHeight: 120,
                  child: _CustomSquare( color: Colors.blueAccent,)
                ),
      
                SizedBox(width : 20),
      
      
                LimitedBox(
                  maxWidth: 200,
                  maxHeight: 200,
                  child: _CustomSquare( color: Colors.blueAccent,)
                )
              ],
          )
        
            ],
          ),
        ),
      )
      
    );
  }
}


class _CustomSquare extends StatelessWidget {

  final Color color;
  const _CustomSquare({this.color = Colors.red  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 500,
      height: 500,
      color: color,
      child: const Text( '500w / 500h' , style:  TextStyle(color: Colors.white),),
    );
  }
}
