import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class TabBarScreen extends StatelessWidget {
  static const name = 'tab_bar_screen';
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Screen'),
      ),
      body: ListView.builder(
        itemCount: tabBarItems.length,
        itemBuilder: (context, index) {
          final item = tabBarItems[index];

          return CustomListTile(item: item);
        },
      ),
    );
  }
}