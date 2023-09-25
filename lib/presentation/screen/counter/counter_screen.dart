import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/counter_provider.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';


class CounterScreen extends ConsumerWidget {

  static const String name = 'counter_screen';
  

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    final int counterValue = ref.watch(counterProvider);
    final bool darkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter + Riverpod'),
        actions: [
          IconButton(
            icon: darkMode ? const Icon(Icons.dark_mode_outlined) : const Icon(Icons.light_mode_outlined),
            onPressed: (){
              ref.read(isDarkModeProvider.notifier).update((state) => !state);
            },
          )
        ],
      ),
      body: Center(
        child: Text('Valor : $counterValue' ,style: Theme.of(context).textTheme.titleLarge ,)
        ),
      floatingActionButton: FloatingActionButton(
        onPressed:()=>{

          //* Otra forma en como podemos acceder al provider y actualizarlo
          // ref.read(counterProvider.notifier).update((state) => state + 1)

          //* Forma comun de acceder y actualizar el provider
          ref.read(counterProvider.notifier).state++
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}