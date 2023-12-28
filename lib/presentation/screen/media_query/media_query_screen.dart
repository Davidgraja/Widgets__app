import 'package:flutter/material.dart';

class MediaQueryScreen extends StatelessWidget {
  static const name = 'media_query_screen';
  const MediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar() ,
      body: _MediaQueryView()
    );
  }
}

class _MediaQueryView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      minimum: const EdgeInsets.only(top: 30),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Text('Nota' ,style: TextStyle(color: Colors.red , fontSize: 20),),
                const Text(
                    'Podemos acceder a cada una de las siguientes propiedades por medio de sus metodos estaticos o por medio de el metodo estatico of()'
                ),

                const SizedBox(height: 10,),

                BoxForInfo(
                  title: 'Padding actual del dispositivo',
                  property: 'MediaQuery.paddingOf: ',
                  value: MediaQuery.paddingOf(context).toString(),
                ),

                BoxForInfo(
                  title: 'Padding actual del dispositivo',
                  property: 'MediaQuery.maybePaddingOf: ',
                  value: MediaQuery.maybePaddingOf(context).toString(),
                ),

                BoxForInfo(
                  title: 'Relación de píxeles del dispositivo',
                  property: 'MediaQuery.devicePixelRatioOf: ',
                  value: MediaQuery.devicePixelRatioOf(context).toString(),
                ),

                BoxForInfo(
                  title: 'Tamaño del ancestro de MediaQuery más cercano',
                  property: 'MediaQuery.maybeSizeOf: ',
                  value: MediaQuery.maybeSizeOf(context).toString(),
                ),

                BoxForInfo(
                  title: 'Información mas detallada del dispositivo',
                  property: 'MediaQuery.maybeOf: ',
                  value: MediaQuery.maybeOf(context).toString(),
                ),

                BoxForInfo(
                  title: 'Brillo o tema del dispositivo',
                  property: 'MediaQuery.maybePlatformBrightnessOf: ',
                  value: MediaQuery.maybePlatformBrightnessOf(context).toString(),
                ),

                BoxForInfo(
                  title: 'Brillo o tema del dispositivo',
                  property: 'MediaQuery.platformBrightnessOf: ',
                  value: MediaQuery.platformBrightnessOf(context).toString(),
                ),

                BoxForInfo(
                  title: 'Orientación del dispositivo',
                  property: 'MediaQuery.maybeOrientationOf: ',
                  value: MediaQuery.maybeOrientationOf(context).toString(),
                ),

                BoxForInfo(
                  title: 'Modo de navegación del dispositivo',
                  property: 'MediaQuery.maybeNavigationModeOf: ',
                  value: MediaQuery.maybeNavigationModeOf(context).toString(),
                ),

                BoxForInfo(
                  title: 'width del dispostivo',
                  property: 'MediaQuery.of(context).size.width: ',
                  value: MediaQuery.of(context).size.width.toString(),
                ),

                BoxForInfo(
                  title: 'height del dispostivo',
                  property: 'MediaQuery.of(context).size.height: ',
                  value: MediaQuery.of(context).size.height.toString(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BoxForInfo extends StatelessWidget {
  final String title;
  final String property;
  final String value;
  const BoxForInfo({super.key, required this.title, required this.property, required this.value});

  @override
  Widget build(BuildContext context) {

    final textStyles = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title , style: textStyles.titleMedium,),
        Wrap(
          children: [
            Text( property , style: textStyles.bodyMedium,),
            Text(value)
          ],
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}
