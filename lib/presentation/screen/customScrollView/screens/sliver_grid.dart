import 'dart:math';

import 'package:flutter/material.dart';
class CustomSliverGrid extends StatelessWidget {
 
  static const name = 'custom_sliver_grid';
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [

            const SliverAppBar(
              title: Text('SliverGrid'),
            ),

            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120),
              delegate: SliverChildBuilderDelegate(
                childCount: 30,
                (context, index) =>  _CustomSliverGrid(index: index , text: 'SliverGrid',)
              ),
            ),

            SliverGrid.count(
              childAspectRatio: 3.0,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
              crossAxisCount: 2,
              children: List.generate(30, (index) => _CustomSliverGrid(index: index , text: 'SliverGrid count',))
            ),

            SliverGrid.extent(             
              maxCrossAxisExtent: 180,
              children: List.generate(30, (index) => _CustomSliverGrid(index: index , text: 'SliverGrid extent',))
            ),
  
          ],
        ),
      ),
    );
  }
}

class _CustomSliverGrid extends StatelessWidget {

  final int index ;
  final String? text;

  const _CustomSliverGrid({ required this.index  ,  this.text});

  @override
  Widget build(BuildContext context) {
  
    final g = Random().nextInt(255);
    final b = Random().nextInt(255);
    final r = Random().nextInt(255);

    return Container(
        alignment: Alignment.center,
        color: Color.fromRGBO(r, g, b, 1) ,
        child: Text(text ?? '' , style: const TextStyle(color: Colors.white),),
    );
  }
}