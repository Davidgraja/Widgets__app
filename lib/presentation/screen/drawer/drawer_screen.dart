import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: const _DrawerBody(),
      endDrawer: const _DrawerView(),
    );
  }
}

class _DrawerView extends StatelessWidget {
  const _DrawerView();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: Colors.amber,
      shape: const LinearBorder(), // Forma del Drawer
      child: ListView.builder(
        itemCount: 12,
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color : Colors.amber.shade100
            ),
            margin: const EdgeInsets.only(bottom: 6.0 , left: 4.0 , right: 4.0),
            child: ListTile(
              title: Text('option: $index'),
              subtitle: const Text('Subtitle of tile'),
              onTap: ()=> context.pop(),
            ),
          ),
      ),
    );
  }
}

class _DrawerBody extends StatelessWidget {
  const _DrawerBody();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          Scaffold.of(context).openEndDrawer();
        },
        child: const Text('Open Drawer') ,
      ),
    );
  }
}