import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderScreen extends StatefulWidget {
  static const String name = 'stream_builder_screen';
  const StreamBuilderScreen({super.key});

  @override
  State<StreamBuilderScreen> createState() => _StreamBuilderScreenState();
}

class _StreamBuilderScreenState extends State<StreamBuilderScreen> {
  ///? Dentro de un stream puede fluir cualquier tipo de dato 
  
  final colorStream = StreamController<Color>();

  int counter = -1;

  final List<Color> selectedColor = [
    Colors.red,
    Colors.blue,
    Colors.amber,
    Colors.teal,
    Colors.green,
  ];
  

  @override
  void dispose() {
    colorStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),

      body: StreamBuilder(
        // initialData: Colors.black,  //? podemos añadir un valor inicial 
        stream: colorStream.stream ,
        builder: (context, snapshot) {

          if(!snapshot.hasData) {
            return const LoadingWidget();
          } 


          /** Estados del conectionState
           * ConnectionState.done
           * ConnectionState.none
           * ConnectionState.waiting
           * ConnectionState.active
           *  */  

          if(snapshot.connectionState == ConnectionState.done){
            return const Center(child: Text('ya no hay mas información :('));
          }

          return Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color:  snapshot.data,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
          );

        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

          counter++;
          if(counter < selectedColor.length){
            colorStream.sink.add(selectedColor[counter]);
          }else{
            colorStream.close();
          }

        },
        child: const Icon(Icons.color_lens_sharp),
      ),

    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.expand(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Esperando información ...'),
          SizedBox(height: 20,),
          CircularProgressIndicator(strokeWidth: 2 ,)
        ],
      ),
    );
  }
}