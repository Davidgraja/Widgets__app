import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';
  const SnackBarScreen({super.key});

  void  showCustomSnackbar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Snackbar para el usuario'),
      // duration: const Duration(seconds: 2),
      action: SnackBarAction(label: 'ok', onPressed: () {},),
    );

    ScaffoldMessenger.of(context).showSnackBar( snackbar);

  }


  void openDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) =>  AlertDialog(
        title:  const Text('Estas seguro ?'),
        content:  const Text('Tempor aliqua laboris sit ex aute. In est aliquip cillum consectetur culpa elit dolor velit consectetur qui aliquip aliquip. In nostrud in amet do officia sunt officia aliquip veniam duis do elit. Id tempor nostrud officia anim in est labore dolor qui sit duis excepteur ea. Irure ex dolor in consectetur pariatur est anim Lorem nisi pariatur ex ullamco. Mollit consequat velit enim tempor minim aliqua sunt consectetur occaecat esse in quis voluptate.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar'))
        ],

      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),

      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Excepteur consequat adipisicing aliquip officia dolor nisi adipisicing dolore consectetur adipisicing ad sunt id incididunt. Eu laborum mollit est qui exercitation magna aliqua. Veniam duis anim veniam consequat qui eu excepteur proident voluptate exercitation adipisicing aliquip Lorem.')
                  ]
                );
              },
              child: const Text('Licencias usadas')
            ),

            FilledButton(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar Dialogo')
            ),

            
            const _CustomSnackbarPersonalized(),
          ]
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Mostrar snackbar'),
        onPressed: () => showCustomSnackbar(context)
      )
      
    );
  }
}


class _CustomSnackbarPersonalized extends StatelessWidget {
  const _CustomSnackbarPersonalized();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Snackbar Personalizado'),
      onPressed: () {

        ScaffoldMessenger.of(context).clearSnackBars();

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Snackbar Personalized'),
            duration: const Duration(seconds: 5),
            // width: 280.0,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            behavior: SnackBarBehavior.floating,
            action: SnackBarAction(label: 'Ok', onPressed: (){}),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
          )
        );

      },  
    );
  }
}