import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FlutterSlidableScreen extends StatelessWidget {
  const FlutterSlidableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _FlutterSlidableView(),
    );
  }
}

class _FlutterSlidableView extends StatelessWidget {
  const _FlutterSlidableView();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(height: 4 , thickness: 0.8),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),

          child: Slidable(
            closeOnScroll: false,
            key: UniqueKey(),

            startActionPane: ActionPane(
              motion: const BehindMotion(), // ScrollMotion , BehindMotion , DrawerMotion , StretchMotion
              extentRatio: 0.8,

              children: [
                SlidableAction(
                  onPressed: (context) {},
                  icon: Icons.edit,
                  backgroundColor: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  label: 'Edit',
                ),

                const SizedBox(
                  width: 4,
                ),

                SlidableAction(

                  onPressed: (context) {},
                  icon: Icons.delete,
                  backgroundColor: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  label: 'Delete',
                ),


                const SizedBox(
                  width: 4,
                ),


                SlidableAction(
                  onPressed: (context) {},
                  spacing: 4,
                  backgroundColor: Colors.green ,
                  // foregroundColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  icon: Icons.share,
                  label: 'Share',
                ),
              ],
            ),
            child: ListTile(
              tileColor: Colors.transparent,
              title: Text('Item $index'),
            ),
          ),
        );
      },
    );
  }
}

