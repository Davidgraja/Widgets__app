import 'package:flutter/material.dart';

class InteractiveViewerScreen extends StatelessWidget {
  const InteractiveViewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  const _InteractiveViewer(),
    );
  }
}

class _InteractiveViewer extends StatelessWidget {
  const _InteractiveViewer();

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      constrained: true, // si las restricciones de tamaño normal  deben de aplicarse en este punto  del arbol del widgets
      scaleEnabled: true, // habilitar  o deshabilitar el moviendo
      panAxis: PanAxis.free, //manejo de la panoramica
      maxScale:5.0,
      onInteractionEnd: (details) {
        print('onInteractionEnd : $details');
      },

      onInteractionStart: (details) {
         print('onInteractionStart : $details');
      },

      onInteractionUpdate: (details) {
         print('onInteractionUpdate : $details');
      },
      // trackpadScrollCausesScale: false,
      // boundaryMargin: EdgeInsets.symmetric(horizontal: 8.0), // añadir un margin 
      // alignment: Alignment.bottomCenter,
      child: Center(
        child: Image.network(
          'https://www.mashfrog.com/sites/default/files/2023-02/1920x1080_cover_B%20%281%29.png',
           fit: BoxFit.contain,
        )
      ),
    );
  }
}
