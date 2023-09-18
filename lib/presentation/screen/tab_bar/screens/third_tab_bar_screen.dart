import 'package:flutter/material.dart';

class ThirdTabBarScreen extends StatefulWidget {

  static const String name = 'third_tab_bar_screen';
  const ThirdTabBarScreen({super.key});

  @override
  State<ThirdTabBarScreen> createState() => _ThirdTabBarScreenState();
}

class _ThirdTabBarScreenState extends State<ThirdTabBarScreen> with TickerProviderStateMixin {

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: const Text('Tab Controller example'),
      bottom: TabBar(
        isScrollable: true,
        controller: _tabController,
        tabs: const [
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
      flexibleSpace: TabBarView(
        controller: _tabController,
        children: const [
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
    );
  }
}