/*
* En este ejemplo hacemos uso de dos TabBars , una principal y otro secundario
* El principal usa como controlador el Widget DefaultTabController y el secundario usa un TabController
* */

import 'package:flutter/material.dart';

class SecondTabBarScreen extends StatelessWidget {
  static const String name = 'second_tab_bar_screen';
  const SecondTabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Primary and Secondary TabBar'),
            bottom: const TabBar(
              tabs: [
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
              ],
            ),
          ),
          // body: const TabBarView(
          //   children: [
          //     NestedTabBar(outerTab: 'Alerts'),
          //     NestedTabBar(outerTab: 'Brightness'),
          //     NestedTabBar(outerTab: 'Messages')
          //   ],
          // )

          body: const TabBarView(
            children: [
              // NestedTabBar(outerTab: 'alerts'),
              NestedTabBar(outerTab: 'alerts'),
              NestedTabBar(outerTab: 'Brightness'),
              NestedTabBar(outerTab: 'Messages'),
              
            ]
          ),
        )
    );
  }
}

class NestedTabBar extends StatefulWidget {
  final String outerTab;
  const NestedTabBar({
    super.key, required this.outerTab,
  });

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>  with TickerProviderStateMixin{

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length:2 , vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar.secondary(
          controller: _tabController,
          tabs: const [
            Tab(text: 'OverView',),
            Tab(text: 'Specifications',)
          ],
        ),
      
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [


              Card(
                margin: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.description_outlined ,size: 50.0, ),
                    const SizedBox(height: 20.0,),
                    Center(child: Text('Overview of ${widget.outerTab}'))
                  ]
                ),
              ),

              Card(
                margin: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.description_outlined ,size: 50.0, ),
                    const SizedBox(height: 20.0,),
                    Center(child: Text('Specification  of ${widget.outerTab}'))
                  ]
                ),
              ),

            ],  
          )
        ),

      ],
    );
  }
}
