import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _AlertDialogView(),
    );
  }
}


class _AlertDialogView extends StatelessWidget {
  const _AlertDialogView();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    
    return Center(
      child: ElevatedButton(
        child: const Text('Mostrar Alert'),
        onPressed: (){
          _CustomDialog(context, textStyle);
        }, 
      ),
    );
  }

  Future<void> _CustomDialog(BuildContext context, TextTheme textStyle) {
    return showDialog(
      // barrierColor: Colors.transparent, // estable un color de fondo cuando aparece el alert
      //  barrierDismissible: true, // permite que el usuario cierre el alert tocando fuera de este en cualquier punto de la pantalla
        context: context, 
        builder: (context) => AlertDialog(
          title: const Text('Titulo' ,textAlign: TextAlign.center,),
          titleTextStyle: textStyle.labelLarge, // estilo al texto del titulo
          contentTextStyle: textStyle.labelMedium, // estilo al texto del titulo
          content: const Text('Contenido del alert , aqui puede venir cualquier tipo de widget, aunque suele ser siempre texto'), // aqui puede venir cualquier tipo de widget
          alignment: Alignment.bottomCenter, // Alineación del alert
          elevation: 1.0, // elevacion del color del alert
          icon: const FlutterLogo(),
          actionsAlignment: MainAxisAlignment.spaceAround , // Alineación de las acciones dentro del alert
          
          actions: [
            TextButton(
              onPressed: ()=> context.pop(), 
              style: TextButton.styleFrom(foregroundColor: Colors.redAccent), 
              child: const Text('Cerrar') ,
            ),

            TextButton(
              onPressed: ()=> context.pop(), 
              style: TextButton.styleFrom(foregroundColor: Colors.green), 
              child: const Text('Ok') ,
            )

          ],

          //backgroundColor: Colors.red, // background del alert
          //shadowColor: Colors.blueAccent.shade200, // shadow del alert , esta propiedad va muy de la mano con la elevation  
          //surfaceTintColor: Colors.white, // El color utilizado como superposición de tinte de superficie sobre el color de fondo del diálogo, que refleja la [elevación] del diálogo.
          //shape: StadiumBorder(), // forma  geometrica del alert , por defecto toma RoundedRectangleBorder
        ),
      );
  }
}

