import 'package:flutter/material.dart';

class LimitedBoxTwoScreen extends StatelessWidget {
  static const name = 'limited_box_two_screen';
  const LimitedBoxTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LimitedBox  maxHeight : 120'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => _CustomSquare(),
      ) ,
    );
  }
}


class _CustomSquare extends StatelessWidget {
  const _CustomSquare();

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 120,
      child: Container(
        alignment: Alignment.center,
        margin: const  EdgeInsets.only(bottom: 10),
        width: 500,
        height: 500,
        color:  Colors.red ,
        child: const Text( '500w / 500h' , style:  TextStyle(color: Colors.white),),
      ),
    );
  }
}
