import 'package:flutter/material.dart';

class ToolTipScreen extends StatelessWidget {
  static const name = 'tooltip_screen';
  const ToolTipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Tooltip(
              message: 'Flutter logo',
              preferBelow: false,
              // richMessage:
              // height: 5,
              margin: const EdgeInsets.only(bottom: 22),
              onTriggered: () => print('Event'),
              showDuration: const Duration(seconds: 2),
              // textAlign: TextAlign.start,
              // textStyle: TextStyle(color: Colors.amber),
              triggerMode: TooltipTriggerMode.longPress, //? si esta propiedad esta en manual deshabilitara el mensagge en dispositivos con cursor , aqui es donde definir como se mostrra el mensaje al usuario  
              //verticalOffset: 46, //? El espacio vertical entre el widget y la información sobre herramientas mostrada.
              // waitDuration: ,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(15),
                color: Colors.red.shade300                
              ),
              child: const SizedBox(
                width: 100,
                height: 100,
                child: FlutterLogo() ,
              ),
            ),


            IconButton(onPressed: (){}, icon: const Icon(Icons.info) , tooltip: 'Info de la app',)
          ]
        ),
      ),
    );
  }
}