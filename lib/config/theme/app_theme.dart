import 'package:flutter/material.dart';


const  colorList = <Color>[
  Colors.blueAccent,
  Colors.tealAccent,
  Color.fromARGB(255, 250, 19, 2),
  Colors.greenAccent,
  Colors.pinkAccent,
  Color(0xEEFDD0B7)
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({
    this.selectedColor = 0,
    this.isDarkMode = false
  }): assert(selectedColor >= 0 , 'Selected color must be greater then 0'),
      assert(selectedColor < colorList.length  , 'Selected color must be less or equal then ${colorList.length - 1 }');



  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed:  colorList[selectedColor],
      appBarTheme: const AppBarTheme(
      centerTitle: true
  )
  );

  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) => AppTheme(
    selectedColor: selectedColor  ?? this.selectedColor,
    isDarkMode: isDarkMode ?? this.isDarkMode 
    );
  }