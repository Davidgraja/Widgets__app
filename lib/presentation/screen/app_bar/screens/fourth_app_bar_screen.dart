/*
* Este ejemplo muestra cómo escuchar la notificación de desplazamiento de un Scrollable anidado
* en una vista de desplazamiento anidada usando la propiedad NotificationPredicate y usarla para hacer
* que scrolledUnderElevation surta efecto.
*/

import 'package:flutter/material.dart';

final List<String> _titles =[
  'Check',
  'Cloud',
  'Sunny'
];

class FourthAppBarScreen extends StatelessWidget {
  static const String name = 'fourth_app_bar';
  const FourthAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final colorSchema = Theme.of(context).colorScheme;
    final oddColorItem = colorSchema.primary.withOpacity(0.15);
    final pairColorItem = colorSchema.primary.withOpacity(0.5);


    return DefaultTabController(
      initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('AppBar Sample'),
            elevation: 1.0,
            scrolledUnderElevation: 10.0,
            shadowColor: Theme.of(context).shadowColor,
            notificationPredicate: (notification) {
              return notification.depth == 1;
            },
            bottom:  TabBar(
              indicatorColor: Colors.black26,
              labelColor: Colors.black26,
              tabs: [
                Tab(
                  icon: const Icon(Icons.add_task_outlined),
                  text: _titles[0] ,
                ),

                Tab(
                  icon: const Icon(Icons.cloud_done),
                  text: _titles[1],
                ),

                Tab(
                  icon: const Icon(Icons.brightness_5),
                  text: _titles[2],
                ),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor:  index.isOdd ? oddColorItem : pairColorItem,
                    title: Text('${_titles[0]} $index'),
                  );
                },
              ),

              ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor:  index.isOdd ? oddColorItem : pairColorItem,
                    title: Text('${_titles[1]} $index'),
                  );
                },
              ),

              ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor:  index.isOdd ? oddColorItem : pairColorItem,
                    title: Text('${_titles[2]} $index'),
                  );
                },
              )
            ],
          ),
        )
    );
  }
}