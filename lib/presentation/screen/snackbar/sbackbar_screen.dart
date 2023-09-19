import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),

      body: const _CustomSnackbarPersonalized(),

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
    return Center(

      child: ElevatedButton(
        child: const Text('Snackbar Personalized'),
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
      ),

    );
  }
}