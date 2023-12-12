import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class AlignScreen extends StatelessWidget {
  static const name = 'align_screen';

  const AlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align'),
      ),
      body: ListView.builder(
        itemCount: alignItems.length,
        itemBuilder: (context, index) {
          return CustomListTile(item: alignItems[index]);
        },
      ),
    );
  }
}
