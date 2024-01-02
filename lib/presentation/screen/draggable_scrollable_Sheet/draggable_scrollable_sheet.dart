import 'package:flutter/material.dart';

class DraggableScrollableSheetScreen extends StatelessWidget {
  const DraggableScrollableSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _DraggableView(),
    );
  }
}

/// DraggableScrollableSheet siempre debe de retornar un widget que pueda ser desplazable como  por ejemplo un ListView o SingleChildScrollView
class _DraggableView extends StatelessWidget {
  const _DraggableView();

  @override
  Widget build(BuildContext context) {

    final textStyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [

              Text(
                'DraggableScrollableSheet siempre debe de retornar un widget que pueda ser desplazable como  por ejemplo un ListView o SingleChildScrollView',
                style: textStyle.bodyLarge,
              ),
    
    
              Expanded(
                child: DraggableScrollableSheet(
                  snap:  false, //Permite que los elementos se ordenen segun el tamaño al usuario soltar el scroll,  se ve mas reflejado en el primer elemento
                  initialChildSize: 0.8, // El tamaño  inicial desde el cual va iniciar el scroll 
                  // maxChildSize: 0.9, // el tamaño maximo al cual puede subir el scroll
                  minChildSize: 0.8, /// el tamaño minimo al cual puede bajar el scroll
                  builder: (context, scrollController) {
                    return SingleChildScrollView(
                      controller: scrollController,
                      child: const Column(
                        children: [
                          _CustomSquare(),
                          
                          SizedBox(height: 10,),
                          
                          _CustomSquare(Colors.red),
                          
                          SizedBox(height: 10,),
                    
                          _CustomSquare(),
                    
                          SizedBox(height: 10,),
                          
                          _CustomSquare(),
                        ],
                      ),
                    );
                  },
                )
              )
              
          ],
        ),
      ),
    );
  }
}


class _CustomSquare extends StatelessWidget {
  final Color color;
  const _CustomSquare( [Color? myColor] ) : color = myColor ?? Colors.blueAccent;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 200,
      alignment: Alignment.center,
      color: color,
      child: const Text(
          'Container normal' , 
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
      ) ,
    );
  }

 }
