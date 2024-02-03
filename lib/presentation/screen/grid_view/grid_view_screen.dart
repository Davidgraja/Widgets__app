import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _GridViewBuilder(),
    );
  }
}

class _GridViewCount extends StatelessWidget {
  const _GridViewCount();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4 ,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 0.8,
      children: List.generate(50, (index) => _Square(color: index.isOdd ? Colors.blue : Colors.greenAccent)),
    );
  }
}



class _GridViewBuilder extends StatelessWidget {
  const _GridViewBuilder();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:  4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20
      ),
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) => _Square(color: index.isOdd ? Colors.blue : Colors.greenAccent)
    );
  }
}


class _GridViewCustom extends StatelessWidget {
  const _GridViewCustom();

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4 ,
        crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: 50,
        (context, index) {
           return _Square(color: index.isOdd ? Colors.blue : Colors.greenAccent);
        },
      ),
    );
  }
}

class _Square extends StatelessWidget {
  final Color color;

  const _Square({
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 300,
    );
  }
}

