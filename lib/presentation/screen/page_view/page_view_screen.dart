import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class PageViewScreen extends StatelessWidget {
  static const String name = 'page_view_screen';
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pageViewsitems.length,
        itemBuilder: (context, index) {
          final item = pageViewsitems[index];

          return CustomListTile(item: item);
        },
      ),
    );
  }
}
