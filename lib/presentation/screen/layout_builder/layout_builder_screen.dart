import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  static const name = 'layout_builder_screen';
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final children = <Widget>[
      Expanded(child: _Square()),
      Expanded(child: _Square())
    ];
    
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return (constraints.maxWidth < 600)
                    ? Column( children: children,) 
                    :Row(children: children,); 
          },
        )
        ),
    );
  }
}


class _Square extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: 150,
      color: Colors.blueAccent,
    );
  }
}