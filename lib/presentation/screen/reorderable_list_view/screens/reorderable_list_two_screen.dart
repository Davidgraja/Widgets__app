import 'dart:ui';

import 'package:flutter/material.dart';

class ReorderableListTwoScreen extends StatelessWidget {
  static const name = 'reorderable_list_two_screen';
  const ReorderableListTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _ReorderableView(),
    );
  }
}
class _ReorderableView extends StatefulWidget {
  @override
  State<_ReorderableView> createState() => _ReorderableViewState();
}

class _ReorderableViewState extends State<_ReorderableView> {

  List<CustomCard> getItems( BuildContext context ){
    final primaryColor = Theme.of(context).colorScheme.primaryContainer;
    final secundaryColor = Theme.of(context).colorScheme.onInverseSurface;
     return List.generate(40, (index) => CustomCard(key: Key('$index'), index: index , color: ( index.isOdd) ? primaryColor : secundaryColor,));
  }

  Widget proxyDecorator( Widget child, int index, Animation<double> animation , List<CustomCard> items){
    return AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          final double animValue = Curves.easeInOut.transform(animation.value);
          final double elevation = lerpDouble(1, 6, animValue)!;
          final double scale = lerpDouble(1, 1.04, animValue)!;

          final item = items[index];

          return Transform.scale(
            scale: scale,
            child:  CustomCard( color: item.color, index: item.index, elevation: elevation,)
          );
        },
    );
  }

  @override
  Widget build(BuildContext context) {

   final cards = getItems(context);

    return ReorderableListView(
        proxyDecorator: (child, index, animation) =>  proxyDecorator(child, index, animation , cards) ,
        onReorder: (oldIndex, newIndex) {
          if(oldIndex < newIndex){
            newIndex -= 1;
          }
          final item = cards.removeAt(oldIndex);
          cards.insert(newIndex, item);
        },
        children:  cards,
    );
  }
}

class CustomCard extends StatelessWidget {
  final int index;
  final Color color;
  final double? elevation;

  const CustomCard({
    super.key,
    required this.index,
    required this.color,
    this.elevation
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
       color: color ,
       margin: const EdgeInsets.symmetric(horizontal: 16 , vertical: 6),
        child: SizedBox(
          height: 100,
          child: Center(
             child: Text('Card $index')
       ),
        ),
     );
  }
}