import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'homeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: _HomeView(),
    );
  }
}


class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics:  BouncingScrollPhysics() ,
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {

        final item = appMenuItems[index];

        return _CustomListTile(item: item);
    },);
  }
}


class _CustomListTile extends StatelessWidget {
  final MenuItem item;
  const _CustomListTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return  ListTile(
      title: Text(item.title) ,
      subtitle: Text(item.subTitle),
      leading: Icon(item.icon , color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded , color: colors.primary,),
      onTap: (){
        // Navegación a otras pantallas con GoRouter
        context.push(item.link);


        // context.pushNamed(CardsScreen.name);  Ruta por nombre
      },
      splashColor: colors.inversePrimary,
    );
  }
}
