import 'package:flutter/material.dart';

class ExpansionPanelScreen extends StatelessWidget {
  const ExpansionPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _ExpansionPanelView(),
    );
  }
}


class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item({required this.expandedValue , required this.headerValue , this.isExpanded = false});
}

List<Item> generateItems( int numberOfItems){
  return List<Item>.generate(numberOfItems, (index) {
    return Item(
      headerValue: 'This is a item number $index',
      expandedValue: 'Minim consequat labore deserunt nulla sunt esse. Culpa laboris incididunt ex nostrud ea in Lorem. Culpa proident nulla laboris minim sint duis anim. Magna do irure exercitation in velit deserunt dolore ad. Ex quis tempor voluptate laborum occaecat ullamco consequat Lorem nisi qui elit cupidatat elit aute.',
    );
  });
}


class _ExpansionPanelView extends StatefulWidget {
  const _ExpansionPanelView();

  @override
  State<_ExpansionPanelView> createState() => _ExpansionPanelViewState();
}

class _ExpansionPanelViewState extends State<_ExpansionPanelView> {
  final data = generateItems(20);
  
  @override
  Widget build(BuildContext context) {
    return Scrollbar( // Widget para mostrar la barra  de desplazamiento
      thickness: 6,
      radius: const  Radius.circular(8),
      child: SingleChildScrollView(
        child: Container(
          child: _builderPanels(),
        ),
      ),
    );
  }


  Widget _builderPanels(){
    return ExpansionPanelList(
      animationDuration: const Duration( milliseconds: 600 ),
      elevation: 4,
      dividerColor: Theme.of(context).primaryColor,

      expansionCallback: (index, isExpanded) {
        setState(() {
          data[index].isExpanded = isExpanded;
        });
      },

      children: data.map(( Item e){
        return ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text(e.headerValue),
            );
          },

          body: ListTile(
            subtitle: Text(e.expandedValue) ,         
            trailing:const Icon(Icons.delete) ,
              onTap: () {
                setState(() {
                  data.removeWhere((element) => e == element);
                });
              },  
          ),

          isExpanded: e.isExpanded
        );
      }).toList()


    );
  }
}