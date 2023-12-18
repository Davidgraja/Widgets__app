import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class ReorderableListViewScreen extends StatelessWidget {
  static const name = 'reorderable_list_view_screen';
  const ReorderableListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: reorderableItems.length,
          itemBuilder: (context, index) => CustomListTile(item: reorderableItems[index]) ,
      ),
    );
  }
}
