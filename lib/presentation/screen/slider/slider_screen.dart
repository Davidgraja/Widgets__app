import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import '../../shared/custom_list_title.dart';

class SliderScreen extends StatelessWidget {
  static const name = 'slider_screen';
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: sliderItems.length,
        itemBuilder: (context, index) {
          final item = sliderItems[index];

          return  CustomListTile(item: item);
        },
      ),
    );
  }
}
