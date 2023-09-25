import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const String name = 'theme_changer_screen'; 

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    final darkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
        actions: [
          IconButton(
            icon: darkMode ? const Icon(Icons.dark_mode_outlined) : const Icon(Icons.light_mode_outlined),
            onPressed: (){
              ref.read(isDarkModeProvider.notifier).update((state) => !state);
            }, 
          )
        ]
      ),

      body: const _ThemeChangerView() ,
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    final List<Color> themeColors = ref.watch(colorsProvider);
    final int indexColor = ref.watch(selectedIndexColorProvider);

    return ListView.builder(
      itemCount: themeColors.length,
      itemBuilder:(context, index) {
        final color = themeColors[index];
        return RadioListTile(
          title: Text('Este color' , style: TextStyle(color: color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: indexColor, 
          onChanged: (value) {
            ref.read(selectedIndexColorProvider.notifier).state = index;
          },
        );
      },  
    );
  }
}