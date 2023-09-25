import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

//  Provider  que maneja un bool
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//  Provider  que maneja un bool
final selectedIndexColorProvider = StateProvider<int>((ref) => 0);

// listado de colores inmutable
final colorsProvider = Provider((ref) => colorList);