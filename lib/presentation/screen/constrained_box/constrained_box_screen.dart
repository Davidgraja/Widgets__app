import 'package:flutter/material.dart';

class ConstrainedBoxScreen extends StatelessWidget {
  static const name =  'constrained_box_screen';
  const ConstrainedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConstrainedBox'),
      ),
      body: const _ConstrainedView(),
    );
  }
}


class _ConstrainedView extends StatelessWidget {
  const _ConstrainedView();

  @override
  Widget build(BuildContext context) {
    final testStyle = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              
              RichText(

                textAlign: TextAlign.center,
                text: TextSpan(
                  style: testStyle.bodyMedium,
                  children: [
                    TextSpan(text: 'Nota : ' , style: testStyle.titleMedium!.copyWith(color: Colors.red)),
                    const TextSpan(text: 'Dentro de ConstrainedBox en su propiedad constraints podemos usar BoxConstraints y su metodo constructor por defecto o sus metodos constructores  expand , loose , tight , tightFor , tightForFinite , por lo general se usa el constructor normal ya que podemos añadir mas restricciones como el minWidth , minHeight , maxWidth , maxHeight \n'),

                    const TextSpan(text: 'como ya veremos este widget es genial para anteponer restricciones a sus hijos , tanto en width como en height ')
                  ]
                ),
              ),
              
              const SizedBox(height: 20,),
              
              const Text('Botton con su altura normal o por defecto'),
              ElevatedButton(onPressed:(){}, child: const Text('Botton 1')),
      
              const SizedBox(height: 10,),
      
              const Text('Botton envuelto en un ConstrainedBox con un minWidth de 200', textAlign: TextAlign.center,),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 200
                ),
                child: ElevatedButton(onPressed:(){}, child: const Text('Botton 2'))
              ),
      
              const SizedBox(height: 10,),
    
              const Text('Botton envuelto en un ConstrainedBox con un minWidth de 130 y un minHeight de 60', textAlign: TextAlign.center,),    
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 130,
                  minHeight: 60
                ),
                child: ElevatedButton(onPressed:(){}, child: const Text('Botton 2'))
              ),
    
    
              const SizedBox(height: 10,),
    
              const Text('Text envuelto en un ConstrainedBox con un maxWidth de 300 y un maxHeight de 120 ,algo a tener en cuenta es que al tener un maxHeight si sobre pasa tal medida el texto posterior a este no se mostraran', textAlign: TextAlign.center,),    
    
              const SizedBox(height: 10,),
    
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  maxHeight: 120
                ),
                child: Container(
                  decoration:  BoxDecoration(
                    border: Border.all(color: Colors.blueAccent)
                  ),
                  child: const Text('Enim nisi qui reprehenderit excepteur labore duis anim ad. Proident anim est nulla laborum veniam adipisicing anim. Culpa non adipisicing minim ex veniam consequat. Labore nisi culpa nostrud pariatur qui. In sint ea ea et. Pariatur et magna officia dolore ea ad enim enim. Sunt quis cupidatat Lorem pariatur ad sunt proident et labore nostrud mollit.'),
                )
              )
        
            ],
          ),
        ),
      ),
    );
  }
}