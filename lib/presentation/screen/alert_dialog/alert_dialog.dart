import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';
import 'package:widget_app/presentation/shared/custom_list_title.dart';

class AlertDialog extends StatelessWidget {
  const AlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:ListView.builder(
        itemCount: alertDialogItems.length,
        itemBuilder: (context, index) {
          final item = alertDialogItems[index];

          return  CustomListTile(item: item);
        },
      ),
    );
  }
}