import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class StackScreen extends StatelessWidget {
  static const name = 'stack_name';

  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stacks'),
      ),
      body: ListView.builder(
        itemCount: stackBarItems.length,
        itemBuilder: (context, index) {
          return CustomListTile(item: stackBarItems[index]);
        },
      ),
    );
  }
}
