import 'package:flutter/material.dart';


const  colorList = <Color>[
  Colors.blueAccent,
  Colors.tealAccent,
  Colors.red,
  Colors.greenAccent,
  const Color.fromRGBO(215, 189, 226, 0.0),
  const Color(0xEEFDD0B7)
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0 , 'Selected color must be greater then 0'),
      assert(selectedColor < colorList.length  , 'Selected color must be less or equal then ${colorList.length - 1 }');



  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed:  colorList[selectedColor],
      appBarTheme: const AppBarTheme(
      centerTitle: false
  )
  );
}