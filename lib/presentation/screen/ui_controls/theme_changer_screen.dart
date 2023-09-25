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
            onPressed: (){}, 
          )
        ]
      ),
    );
  }
}