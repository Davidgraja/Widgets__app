import 'dart:math';

import 'package:flutter/material.dart';

final List<Widget> cardList = List.generate(10, (index) =>  CustomPageView(
  margin: const EdgeInsets.only(left: 20 ),
  decoration: BoxDecoration(
      color: Color.fromRGBO(
          Random().nextInt(255),
          Random().nextInt(255),
          Random().nextInt(255),
          1.0) ,
      borderRadius: BorderRadius.circular(12)
  ),
)
);


class CustomText extends StatelessWidget {
  final String text;
  const CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ,
      style:  const TextStyle(color: Colors.white , fontSize: 26),
    );
  }
}


class CustomPageView extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;
  final  Widget? child;
  final Color? color;
  const CustomPageView({super.key, this.color, this.child, this.decoration, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ,
      width: double.infinity,
      height: double.infinity,
      color: color,
      decoration: decoration ,
      child: Center(child: child),
    );
  }
}
