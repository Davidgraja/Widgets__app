import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class LimitedBoxScreen extends StatelessWidget {
  static const name = 'limited_box_screen';
  const LimitedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LimitedBox'),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: limitedBoxItems.length,
        itemBuilder: (context, index) => CustomListTile(item: limitedBoxItems[index]),
        ),
    );
  }
}