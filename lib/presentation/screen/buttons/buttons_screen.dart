import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttonsScreen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Buttons Screen'),
        ),
        body: Placeholder() ,
    );
  }
}
