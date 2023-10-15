import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class ChipsScreen extends StatelessWidget {
  static const name = 'chips_screen';

  const ChipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chips'),
      ),
      body: ListView.builder(
        itemCount: chipsItems.length,
        itemBuilder: (context, index) {
          return CustomListTile(item: chipsItems[index]);
        },
      ),
    );
  }
}
