import 'package:flutter/material.dart';

class FractionallySizeBoxScreen extends StatelessWidget {
  static const name = 'fractionally_size_box_screen';
  const FractionallySizeBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _FractinallyView(),
    );
  }
}

class _FractinallyView extends StatelessWidget {
  const _FractinallyView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const FractionallySizedBox(
            widthFactor: 0.9,
            child: Text('Este widget permite  dar valores totalmente relativos , dependiendo de la pantalla el valor puede variar ya que el 0.9 , 0.8 , etc no va a ser igual en todos los dispositivos ')
          ),

          const FractionallySizedBox(
            widthFactor: 0.9,
            child: Text('Tambien podemos generar espacios indicando el heightFactor pero como dependiendo de la pantalla este valor cambia debemos envolverlo dentro de otro widget  el cual pueda tener un tamalo y alto definido , podemos usar por ejemplo el Widget Flexible , estos dos pueden generar espacio')
          ),

          const Flexible(
           child: FractionallySizedBox(
            heightFactor: 0.1,
           ),
         ),
    
         Container(
          alignment: Alignment.center,
           child: FractionallySizedBox(
            widthFactor: 0.8,
            child: ElevatedButton(onPressed: (){}, child: const Text('Button con widthFractor : 0.8'))
                 ),
         ),


         const Flexible(
           child: FractionallySizedBox(
            heightFactor: 0.1,
           ),
         ),
    
        
          const FractionallySizedBox(
            widthFactor: 0.6,
            child: Text('Este texto tiene un widthFactor de 0.6 , esto equivale al 60 porciento de la pantalla actual ')
          )
    
        ],
      ),
    );
  }
}