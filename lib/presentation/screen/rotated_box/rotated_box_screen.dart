import 'package:flutter/material.dart';

/* 
  Es importante comprender de que RotatedBox y Transform son widgets completamente difierentes , RotatedBox modifica completamente el tamaño de su hijo y con ello la ui actual del contexto.

  Transform es no midifica el tamaño ni la ui , es muy usado y muy uitl  para crear animaciones

*/



class RotatedBoxScreen extends StatefulWidget {
  const RotatedBoxScreen({super.key});

  @override
  State<RotatedBoxScreen> createState() => _RotatedBoxScreenState();
}

class _RotatedBoxScreenState extends State<RotatedBoxScreen> {
  int quarterTurns = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _RotatedBoxView(quarterTurns),

      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          setState(() {
            quarterTurns++;
          });
         },
        child: const Icon(Icons.rotate_90_degrees_ccw),
      ),

    );
  }
}

class _RotatedBoxView extends StatelessWidget {
  final int quarterTurns;
  const _RotatedBoxView(this.quarterTurns);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
        
            RotatedBox(
              quarterTurns: quarterTurns,
              child: const Text('Rotated Box Widget' , style: TextStyle(fontSize: 26) ,)
            ),

            const SizedBox(height: 20,),
            
            const Text('Cillum reprehenderit quis sit irure minim ipsum commodo. Est nostrud cupidatat nisi minim consequat pariatur exercitation minim ea do laboris. Ipsum et ea ullamco do dolore commodo enim qui et nulla ut deserunt. Sit commodo reprehenderit adipisicing minim et ut quis voluptate eu fugiat irure. Est exercitation duis commodo deserunt nostrud eu fugiat sint tempor non. Aliqua mollit voluptate magna consequat adipisicing magna ex do dolor aliquip laborum est adipisicing.')
        
          ]
        ),
      ),
    );
  }
}