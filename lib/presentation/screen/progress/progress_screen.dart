import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Column(
        children: [
          SizedBox(height: 30.0),
          Text('Circular Progress Indicator'),
          SizedBox(height: 10.0),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black38  ),

          SizedBox(height: 30.0),
          Text('Circular y Linear controlado'),
          _ControlledProgessIndicador()

        ]
      ),
    );
  }
}


class _ControlledProgessIndicador extends StatelessWidget {
  const _ControlledProgessIndicador();

  @override
  Widget build(BuildContext context) {
    return  StreamBuilder(
      stream: Stream.periodic( const Duration(milliseconds:300 ), (value) {
        return value * 2 / 100 ;
      },).takeWhile((element) => element < 100 ),
      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;

        return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            CircularProgressIndicator( value: progressValue, strokeWidth: 2, backgroundColor: Colors.black38 ),
            const SizedBox(width: 20,),
            Expanded(
              child: LinearProgressIndicator(value: progressValue) 
            )
          ],
        ),
       );
      
      }, 
    );
  }
}