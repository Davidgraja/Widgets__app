import 'package:flutter/material.dart';

/// Para entender que soluciona  el Builder widget debemos de entender como esta fluyendo el contexto de nuestra aplicación , ya que aveces  vamos a querer
/// acceder al context pero sin saberlo accedemos a un contexto anterior y no al actual  , es aqui donde salen los errores ya que no podemos acceder al context actual
/// uno de las soluciones es anteponer un context en el estado actual de la aplicación para que de esa forma se actualize y podemos acceder al nuevo context.
/// Para generar o anteponer un nuevo context lo podemos hacer de dos formas:
/// -- la primera es dristribuir la logica o ui en widgets  ya que al crear un nuevo widget generamos
/// un build junto a un nuevo context
///--- la segunda es hacer uso del Widget Builder , ya que este nos genera un nuevo context sin la necesidad de crear un nuevo widget  , y seria la opción mas viable y rapida

class BuilderScreen extends StatelessWidget {
  const BuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder'),
      ),

      /// si retiro el Builder widget accederemos al context anterior y no podremos acceder al context actual y con ello vendran los errores
      body: Builder(
        builder: ( BuildContext context) => Center( /// nuevo context , actualizado
          child: TextButton(
            onPressed: (){
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Method with context'))
              );
            },
            child:   Text('show snackbar' , style: Theme.of(context).textTheme.labelLarge,),
          ),
        ),
      ),
    );
  }
}

/// si creamos un widget basicamente funcionaria ya que se antepondria un nuevo contexto
class _BuilderView extends StatelessWidget {
  const _BuilderView();

  @override
  Widget build(BuildContext context) { /// nuevo context actualizado
    return Center(
      child: TextButton(
        onPressed: (){
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Method with context'))
          );
        },
        child:   Text('show snackbar' , style: Theme.of(context).textTheme.labelLarge,),
      ),
    );
  }
}


/// otro ejemplo del uso del Builder widget , NO ES RECOMENDADO HACER ESTO , ES MALA PRACTICA HACER ESTO DENTRO DE FUNCIONES
Widget _builderWidget(){
    return Builder(
      builder: ( BuildContext context) => Center(
        child: TextButton(
          onPressed: (){
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Method with context'))
            );
          },
          child:   Text('show snackbar' , style: Theme.of(context).textTheme.labelLarge,),
        ),
      ),
    );
}
