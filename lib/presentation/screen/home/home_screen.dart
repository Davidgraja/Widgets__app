import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'homeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: _HomeView(),
    );
  }
}


class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics:  BouncingScrollPhysics() ,
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {

        final item = appMenuItems[index];

        return CustomListTile(item: item);
    },);
  }
}

