import 'package:flutter/material.dart';

class SafeAreaScreen extends StatelessWidget {
  static const String name = 'safe_area_screen';
  const SafeAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ListView(
          children: List.generate(100, (index) => ListTile(
            title: Text('Text: $index'),
            onTap: () {},
            )
          ),
        ),
      ),
    );
  }
}