/*
* En este ejemplo estamos usando el widget DefaultTabController para el control de las pestañas
* ademas estamos haciendo uso de la propiedad isScrollable del widget TabBar , esto para que el TabBar sea completamente scrollable y sin importar la cantidad
* de hijos widgets que tenga sea manipulabe y se vea perfectamente cada uno de estos
* */

import 'package:flutter/material.dart';

class FirstTabBarScreen extends StatelessWidget {

  static const String name = 'first_tab_bar_screen';
  const FirstTabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar basic'),
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
              labelColor: Colors.blueAccent,
              labelStyle: TextStyle(
                // decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.overline
              ),
              unselectedLabelStyle: TextStyle(
                decoration: TextDecoration.none
              ),

              tabs:  [
                Tab(
                  icon: Icon(Icons.add_alert_outlined),
                  text: 'Alerts',
                ),
                Tab(
                  icon: Icon(Icons.brightness_4_outlined),
                  text: 'Brightness',
                ),
                Tab(
                  icon: Icon(Icons.message_outlined),
                  text: 'Messages',
                ),
                Tab(
                  icon: Icon(Icons.account_circle_outlined),
                  text: 'Acount',
                ),
                Tab(
                  icon: Icon(Icons.apple_outlined),
                  text: 'Apple',
                ),
                Tab(
                  icon: Icon(Icons.android_outlined),
                  text: 'Android',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text('You are in Alerts'),
              ),
              Center(
                child: Text('You are in Brightness'),
              ),

              Center(
                child: Text('You are in Messages'),
              ),

              Center(
                child: Text('You are in Acount'),
              ),

              Center(
                child: Text('You are in Apple'),
              ),

              Center(
                child: Text('You are in Android'),
              ),
            ],
          ),
        )
    );
  }
}