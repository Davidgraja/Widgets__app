/*
* AppBar con acciones:
* la primera accion lanza un SnackBar
* la segunda accion navega hacia otra pagina
* */

import 'package:flutter/material.dart';

class SecondAppBarScreen extends StatelessWidget {

  static const String name = 'second_app_bar';

  const SecondAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Two'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add_alert_outlined),
              tooltip: 'Show Snackbar',
              onPressed:(){
                  ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                    showCloseIcon: true ,
                    closeIconColor: Colors.green,
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    content:   Row(
                      children: [
                        Icon(Icons.add_alert_sharp , color: Colors.green),
                        SizedBox(width: 20),
                        Text('this is a Snackbar', style: TextStyle(fontSize: 20 , color: Colors.green),)
                      ],
                    ),
                  ));
              },
          ),

          IconButton(
            icon: const Icon(Icons.navigate_next_outlined),
            tooltip: 'Go to the next page',
            onPressed:(){
              Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Next page'),
                      ),
                      body: const Center(
                        child: Text(
                          'this is the next page',
                          style: TextStyle(
                            fontSize: 25
                          ),
                        ),
                      ),
                    );

                  },
                )
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'AppBar with actions',
          style: TextStyle(fontSize: 25) ,
        ),
      ),
    );
  }
}