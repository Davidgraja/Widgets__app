import 'package:flutter/material.dart';

class FittedBoxScreen extends StatelessWidget {
  static const name = 'fitted_box';
  const FittedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text('Con FittedBox podemos logar que un widget hijo se adapte al contenedor padre y lograr varios resultados , por ejemplo  tenemos un contenedor y una imagen  la caul tiene mayores dimensiones que el contendor:'),
                const SizedBox(height: 10,),
                const _CustomContainer(),
                const SizedBox(height: 10,),
                _CustomImage(),
      
      
                const SizedBox(height: 20,),
                const Text('Por defecto la imagen o widget tratara de adaptarse al contenedor padre'),
                const SizedBox(height: 10,),
                _CustomContainer(child: _CustomImage(),),
      


                const SizedBox(height: 20,),
                const Text('Puede que la adaptación por defecto no es lo que deseamos , es aqui donde entra el widget FittBox y haciendo uso de propiedad fit podemos definir como adaptar nuestra imagen '),
                const SizedBox(height: 10,),
                const _Title(text: 'por defecto toma  BoxFit.contain',),
                const SizedBox(height: 10,),

                _CustomContainer(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: _CustomImage()
                  ),
                ),



                const SizedBox(height: 20,),
                const _Title(text: 'BoxFit.cover'),
                const SizedBox(height: 10,),

                _CustomContainer(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: _CustomImage()
                  ),
                ),



                const SizedBox(height: 20,),
                const _Title(text: 'BoxFit.fill' ),
                const SizedBox(height: 10,),

                _CustomContainer(
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: _CustomImage()
                  ),
                ),


                const SizedBox(height: 20,),
                const _Title(text: 'BoxFit.fitHeight'),
                const SizedBox(height: 10,),

                _CustomContainer(
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: _CustomImage()
                  ),
                ),


                const SizedBox(height: 20,),
                const _Title(text: 'BoxFit.fitWidth'),
                const SizedBox(height: 10,),

                _CustomContainer(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: _CustomImage()
                  ),
                ),


                const SizedBox(height: 20,),
                const _Title(text: 'BoxFit.none'),
                const SizedBox(height: 10,),

                const Text('BoxFit.none hara que no se aplique  ninguna adapatación'),



                const SizedBox(height: 20,),
                const _Title(text: 'BoxFit.scaleDown'),
                const SizedBox(height: 10,),

                _CustomContainer(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: _CustomImage()
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String text;
  const _Title({required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(text , style: const TextStyle(fontWeight: FontWeight.bold), );
  }
}

class _CustomContainer extends StatelessWidget {
  final Widget? child;
  const _CustomContainer({
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 200,
      color: Colors.red,
      child: child,
    );
  }
}

class _CustomImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Image(image: NetworkImage('https://www.mashfrog.com/sites/default/files/2023-02/1920x1080_cover_B%20%281%29.png'));
  }
}