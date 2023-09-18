/*
* Este ejemplo muestra la creación de un widget AppBar con las propiedades
* ShadowColor y scrolledUnderElevation configuradas
* */

import 'package:flutter/material.dart';

final List<int> _items = List<int>.generate(51, (int index) => index);

class ThirdAppBarScreen extends StatefulWidget {
  static const String name = 'third_app_bar';
  const ThirdAppBarScreen({super.key});

  @override
  State<ThirdAppBarScreen> createState() => _AppBarWidgetScrollState();
}

class _AppBarWidgetScrollState extends State<ThirdAppBarScreen> {
  bool shadowColor = false;

  @override
  Widget build(BuildContext context) {

    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final oddItemColor = colorScheme.secondary.withOpacity(0.5);
    final evenItemColor = colorScheme.primary.withOpacity(0.15);

    return  Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 8.0,
        shadowColor: shadowColor ? colorScheme.shadow : null,
        title:  const Text('AppBar Three'),
        notificationPredicate: (notification) {
          return notification.depth == 0;
        },
      ),

      body: GridView.builder(
          itemCount: _items.length ,
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0

          ),
          itemBuilder: (context, index) {
              if(index == 0){
                return Center(
                  child: Text(
                    'First child',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                );
              }

              return Container(
                alignment:Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color:  _items[index].isOdd ?  oddItemColor : evenItemColor
                ),
                child: Text('Item $index'),
              );
          },
      ),

      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: OverflowBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: (){
                    setState(() {
                      shadowColor = !shadowColor;
                    });
                  },
                  icon:Icon(
                    shadowColor ? Icons.visibility_off : Icons.visibility,
                    color: colorScheme.secondary,
                  ),
                  label: const Text('Shadow Color' , style: TextStyle(color: Colors.black),))
            ],
          )
        ),
      ),


    );
  }
}