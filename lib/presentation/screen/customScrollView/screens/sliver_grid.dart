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
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 250),
              delegate: SliverChildBuilderDelegate(
                childCount: 20,
                (context, index) =>  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.green.shade200 ,
                    child: Text('SliverGrid : $index'),
                  ),
                )
              ),
            ),

            SliverGrid.count(
              // crossAxisSpacing: 200,
              // mainAxisSpacing: 400,
              crossAxisCount: 2,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      alignment: Alignment.center,
                      color: Colors.red.shade200 ,
                      child: Text('SliverGrid.count'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      alignment: Alignment.center,
                      color: Colors.red.shade200 ,
                      child: Text('SliverGrid.count'),
                  ),
                ),
              ],
            ),

            SliverGrid.extent(
              maxCrossAxisExtent: 180,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                        alignment: Alignment.center,
                        color: Colors.blue.shade200 ,
                        child: Text('SliverGrid.extent'),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                        alignment: Alignment.center,
                        color: Colors.blue.shade200 ,
                        child: Text('SliverGrid.extent'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                        alignment: Alignment.center,
                        color: Colors.blue.shade200 ,
                        child: Text('SliverGrid.extent'),
                  ),
                ),

              ],
            ),
  
          ],
        ),
      ),
    );
  }
}
