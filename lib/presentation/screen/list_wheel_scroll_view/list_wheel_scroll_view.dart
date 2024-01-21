import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class ListWheelScroolViewScreen extends StatelessWidget {
  const ListWheelScroolViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: listWheelScrollViewItems.length,
        itemBuilder: (context, index) {
          return CustomListTile(item: listWheelScrollViewItems[index]) ;
        },
      ),
    );
  }
}