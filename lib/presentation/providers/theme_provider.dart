import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

//  Provider  que maneja un bool
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//  Provider  que maneja un bool
final selectedIndexColorProvider = StateProvider<int>((ref) => 0);

// listado de colores inmutable
final colorsProvider = Provider((ref) => colorList);


/*
* StateNotifierProvider
* State de tipo AppTheme (custom) , provider mas complejo
**/
final themeNotifierProvider  = StateNotifierProvider<ThemeNotifier , AppTheme>((ref) => ThemeNotifier());

//* clase controladora del StateNotifierProvider
class ThemeNotifier extends StateNotifier<AppTheme> {

  // State o estado del StateNotifier = new AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex( int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);
  }
}