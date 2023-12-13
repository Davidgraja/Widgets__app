import 'package:flutter/material.dart';

/// ValueNotifier es un tipo especial de clase que extiende de ChangeNotifier
/// Este widget es una de muchas formas de las cuales podemos hacer fluir información y que aquello widgets que escuchen o hagan uso de esta data se actualizen
/// cuando esta cambie.

/// Algo a tener en cuenta es de que solo va a poder fluir un unico valor dentro del ValueNotifier
/// ValueNotifier es útil y eficiente en el rendimiento ya que reconstruye solamente a los widgets que lo escuchan mediante el ValueListenableBuilder

class ValueNotifierScreen extends StatefulWidget {
  static const name = 'value_notifier_screen';
  const ValueNotifierScreen({super.key});

  @override
  State<ValueNotifierScreen> createState() => _ValueNotifierScreenState();
}

class _ValueNotifierScreenState extends State<ValueNotifierScreen> {

  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  void dispose() {
    _counter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ValueListenableBuilder<int>(
          valueListenable: _counter,
          builder: (BuildContext context, value, Widget? child) {
            return Text('counter: $value');
          }
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: '1',
              onPressed: (){
                _counter.value =_counter.value + 1;
              },
              child: const Icon(Icons.add)
          ),

          const SizedBox(height: 10,),

          FloatingActionButton(
              heroTag: '2',
              onPressed: (){
                if(_counter.value == 0) return;
                _counter.value = _counter.value - 1;
              },
              child: const Icon(Icons.remove)
          ),
        ],
      )
    );
  }
}
