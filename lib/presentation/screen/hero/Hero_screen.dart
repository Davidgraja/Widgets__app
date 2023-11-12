import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class HeroScreen extends StatelessWidget {
  static const name = 'hero_screen';

  const HeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Widget'),
      ),
      body: ListView.builder(
        itemCount: heroItems.length,
        itemBuilder: (context, index) {
          return CustomListTile(item: heroItems[index]);
        },
      ),
    );
  }
}
