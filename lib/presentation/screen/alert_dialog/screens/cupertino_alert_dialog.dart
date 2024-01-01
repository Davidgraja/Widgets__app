import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CupertinoAlertDialogScreen extends StatelessWidget {
  const CupertinoAlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const  _CupertinoAlertView(),
    );
  }
}

class _CupertinoAlertView extends StatelessWidget {
  const _CupertinoAlertView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        onPressed: (){
          showCupertinoDialog(
            barrierDismissible: true,
            context: context, 
            builder: (context) => CupertinoAlertDialog(
              title: const Text('Titulo del Alert'),
              content: const Text('Contenido del alert , aqui puede venir cualquier tipo de widget, aunque suele ser siempre texto'),
              actions: [
                CupertinoDialogAction(onPressed: () => context.pop(), textStyle: const TextStyle(color: Colors.red), child: const Text('Cerrar')),
                CupertinoDialogAction(onPressed: () => context.pop(), textStyle: const TextStyle(color: Colors.green), child: const Text('Ok')),
              ],
            ),
          );
        },
        child: const Text('Mostrar Alert'),
      ),
    );
  }
}