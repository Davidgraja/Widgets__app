import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class NoticationListenerScreen extends StatelessWidget {
  const NoticationListenerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: notificationListenerItems.length,
        itemBuilder: (context, index) {
          final item = notificationListenerItems[index];

          return  CustomListTile(item: item);
        },
      ),
    );
  }
}
