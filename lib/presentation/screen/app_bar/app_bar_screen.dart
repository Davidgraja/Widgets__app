import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';


class AppBarScreen extends StatelessWidget {

  static const name = 'appBar';

  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Screen'),
      ) ,
      body: ListView.builder(
        itemCount: appBarItems.length,
        itemBuilder: (context, index) {
          final item = appBarItems[index];
         
          return  CustomListTile(item: item);
        },
      ),
    );
  }
}