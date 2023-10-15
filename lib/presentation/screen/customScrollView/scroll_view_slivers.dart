import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class ScrollViewSlivers extends StatelessWidget {

  static const name = 'scroll_view_Slivers';
  
  const ScrollViewSlivers({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Stacks'),
      ),
      body: ListView.builder(
        itemCount: customSliversItems.length,
        itemBuilder: (context, index) {
          return CustomListTile(item: customSliversItems[index]);
        },),
    );
  }
}
