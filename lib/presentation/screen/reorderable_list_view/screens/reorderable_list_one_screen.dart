import 'package:flutter/material.dart';

class ReorderableListOneScreen extends StatelessWidget {
  static const name = 'reorderable_list_one_screen';
  const ReorderableListOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: _ReorderableView() ,
    );
  }
}

class _ReorderableView extends StatefulWidget {
  @override
  State<_ReorderableView> createState() => _ReorderableViewState();
}

class _ReorderableViewState extends State<_ReorderableView> {

  final List<Widget> items =  List.generate(41, (int index) {

    return Container(
      key: Key('$index'),
      margin: const EdgeInsets.only(bottom: 6.0),
      child: ListTile(
        key: Key('$index'),
        title: Text('index $index'),
        tileColor:   index.isOdd ?  Colors.deepPurple.shade100 : Colors.deepPurple.shade50  ,
      ),
    );
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return ReorderableListView(
      autoScrollerVelocityScalar: 60, // velocidad del scroll
      anchor: 0.0, // La posición relativa del desplazamiento de desplazamiento cero.
      header: Text('Ordena  tu lista' , style:  textStyle.headlineLarge,  textAlign: TextAlign.center),
      footer: Text('Fin de la lista' , style:  textStyle.headlineLarge,  textAlign: TextAlign.center),
      physics: const PageScrollPhysics(), // comportamiento del scrool
      onReorderStart: (index) => print('inicio de arrastre'),
      onReorderEnd:(index) => print('fin del arrastre'),
      //itemExtent: 50, // si no es nulo , obliga al hijo a tomar el tamaño dado , en dirección del desplazamiento , se recomienda añadirlo ya que mejora la eficiencia
      // buildDefaultDragHandles: true, // controlador de arrastre para las diferentes plataformas
      onReorder: (oldIndex, newIndex) {
        if(oldIndex < newIndex){
          newIndex -= 1;
        }
        final item = items.removeAt(oldIndex);
        items.insert(newIndex, item);
      },
      children: items ,
    );
  }
}