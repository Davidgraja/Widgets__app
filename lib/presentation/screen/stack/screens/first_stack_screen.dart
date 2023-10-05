import 'package:flutter/material.dart';

class FirstStackScreen extends StatelessWidget {
  static const String name = 'first_stack_name';

  const FirstStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                  'Ejemplo basico de un Stack con tres Container de distintos tamaños y colores , Este es el comportamiento que vamos a tener por defecto'),
      
              const SizedBox(
                height: 10,
              ),
      
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.red,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                  )
                ],
              ),
      
              const SizedBox(
                height: 10,
              ),
      
              const Text(
                  'Todos los hijos del Stack se alinearan con el border superior de acuerdo a la dirección del texto como se ve en el ejemplo anterior , pero podemos cambiar este conportamiento con su propiedad aligment junto las clases Alignment o AlignmentDirectional '),
              
              const SizedBox(
                height: 10,
              ),
      
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 188,
                    height: 188,
                    color: Colors.red,
                  ),
                  Container(
                    width: 168,
                    height: 168,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'AlignmentDirectional.center',
                        style: textStyle.labelMedium,
                      ),
                    ),
                  )
                ],
              ),
      
              const SizedBox(
                height: 10,
              ),
      
              const Text('Ejemplo de como crear un gradiente sobre un stack'),

              const SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 250,
                width: 250,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.blue,
                    ),

                    Container(
                      // padding: const  EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withAlpha(15),
                            Colors.black38,
                            Colors.black,
                          ]
                        )
                      ),
                      child: Text('Texto de primer plano' , style: TextStyle(color:Colors.white  , fontSize: 20.0),),
                    )

                  ],
                ),
              ),



              const SizedBox(height: 50,)

            ],
          ),
        ),
      ),
    );
  }
}
