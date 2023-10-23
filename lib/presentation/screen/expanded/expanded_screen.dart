import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  static const name = 'expanded_screen';
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {


    const textChildStyle =  TextStyle(
      color: Colors.white,
      fontSize: 18,
    );

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Expanded widget')
      ),
      body:  SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          
                const Text('El hijo secundario llenara el espacio disponible'),
          
                const Row(
                  children: [
                  _CustomBox(color: Colors.red),
                  Expanded(child: _CustomBox(color: Colors.green)),
                  _CustomBox(color: Colors.red),
                  _CustomBox(color: Colors.red),
                  ],
                ),
          
                const SizedBox(height: 10.0,),
      
                const Text(
                  'En Rows , Columns  y flex , primero se  exponen los hijos inflexibles y luego lo hace con los flexibles , como lo es en este caso que tenemos dos inflexibles y dos flexibles' , textAlign: TextAlign.center,
                ),
                const Row(
                  children: [
                  _CustomBox(color: Colors.red),
                  Expanded(child: _CustomBox(color: Colors.green)),
                  _CustomBox(color: Colors.red),
                  Expanded(child: _CustomBox(color: Colors.green)),
                  ],
                ),
      
                const SizedBox(height: 10.0,),
      
                const Text(
                  'Podemos tener la necesidad de que un hijo secundario tenga mas peso , prioridad o mas espacio , segun lo veas ; Para esto usamos la propiedad flex, el cual delegara  que hijo flexible tendra mas espacio que otro' ,
                  textAlign: TextAlign.center
                ),
                const Row(
                  children: [
                  _CustomBox(color: Colors.red),
                  Expanded(
                    flex: 2,
                    child: _CustomBox(
                      color: Colors.green,
                      child: Center(child: Text('flex: 2' ,style: textChildStyle,)) ,
                    )
                  ),
                  _CustomBox(color: Colors.red),
                  Expanded(
                    flex: 1 ,
                    child: _CustomBox(
                      color: Colors.green,
                      child: Center(child: Text('flex: 1' , style: textChildStyle, )),
                    ),
                  ),
                  ],
                ),

                const SizedBox(height: 10.0,),
      
                const Text(
                  'En columnas va a funcionar de manera similar pero de forma vertical',
                  textAlign: TextAlign.center
                ),
      
                Container(
                  color: Colors.amberAccent,
                  height: 400.0,
                  child: const Column(
                    children: [
                      _CustomBox(color: Colors.red),
                      Expanded(child: _CustomBox(color: Colors.green)),
                      _CustomBox(color: Colors.red),
                      _CustomBox(color: Colors.red),
                    ],
                  ),
                ),


                const SizedBox(height: 10,),

                const Text(
                  'En Contenedores como Flex va a funcionar de manera similar  a como funciona en un Row o Column , solo que debemos de definir en que eje va orientar a sus hijos',
                  textAlign: TextAlign.center
                ),

                 const Flex(
                   direction: Axis.horizontal,
                   children: [
                     Expanded(child: _CustomBox(color: Colors.green)),
                     _CustomBox(color: Colors.red),
                     _CustomBox(color: Colors.red),
                     _CustomBox(color: Colors.red),
                   ],
                 )
              
              ]
            ),
          ),
        ),
      ) ,
    );
  }
}


class _CustomBox extends StatelessWidget {

  final Color color;
  final Widget? child ;
  const _CustomBox({required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10 , horizontal: 5),
      color:  color,
      width: 50.0,
      height: 50.0,
      child: child,
    );
  }
}