import 'package:flutter/material.dart';

class SpacerScreen extends StatelessWidget {
  static const name = 'spacer_screen';
  const SpacerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spacer widget'),
        centerTitle: true,
      ),

      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Text('Con Spacer podemos perzonalizar la distribucion del espacio , y con  su propieda flex podemos definir que tan flexible puede ser.'),

            SizedBox(height: 10,),

            Text('Como se ve en el ejemplo los Spacer va a tomar todo el espacio disponible despues de asigar aquellos widgets no flexibles , si reciben la proiedad flex  va a distribuir el espacio segun el flex que reciban , por ejemplo el segundo Space del ejemplo tiene un flex de 2 y el primero recibe el spacio restante posible'),
            
            SizedBox(height: 10,),

            Text('Algo a tener en cuenta es de que si usamos Spacer para personalizar los espacios , no tendran efecto la propiedad mainAxisAlignment la cual ajusta hijos en el eje principal'),

            SizedBox(height: 20,),

            _CustomRow()
          ],
        ),
      ),
    );
  }
}

class _CustomRow extends StatelessWidget {
  const _CustomRow();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        _Square(),
        Spacer(), 
        _Square(color: Colors.teal,),
        Spacer(flex: 2,),
        _Square(color: Colors.blueAccent),
      ],
    );
  }
}

class _Square extends StatelessWidget {
  final Color color ;
  const _Square({this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      color: color,
    );
  }
}