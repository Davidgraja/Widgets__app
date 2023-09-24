import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/domain/entities/menu/menu_items.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 0;


  @override
  Widget build(BuildContext context) {

    //* Forma de conocer si hay un notch en el dispositivo , esta es la forma mas sencilla , ya que ppr medio del padding podremos saber si existe o no un notch en dispositivo
    final hasNotch = MediaQuery.of(context).viewPadding.top > 30;

    return NavigationDrawer(
      onDestinationSelected: (value) {
        navDrawerIndex = value;
        setState(() {});

        final menuItem = appMenuItems[value];
        context.push(menuItem.link);

        widget.scaffoldKey.currentState?.closeDrawer();

      },
      selectedIndex: navDrawerIndex,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, hasNotch ? 5 : 10 , 0, 16),
          child: const Text('Opciones Principales'),
        ),

        ...appMenuItems
          .sublist(0 ,2)
          .map((e) => NavigationDrawerDestination(icon: Icon(e.icon), label: Text(e.title)),),

        const  Padding(
            padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
            child: Divider()
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 16),
          child: Text('Mas Opciones'),
        ),

        ...appMenuItems
          .sublist(2)
          .map((e) => NavigationDrawerDestination(icon: Icon(e.icon), label: Text(e.title)),),


      ]
    );
  }
}