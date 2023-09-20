
import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}

const appMenuItems = <MenuItem> [
    MenuItem(
        title: 'Botones',
        subTitle: 'Varios botones en Flutter',
        link: '/buttons',
        icon: Icons.smart_button_outlined
    ),

  MenuItem(
      title: 'Targetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card
  ),

  MenuItem(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded
  ),

  MenuItem(
      title: 'Snackbars',
      subTitle: 'Snackbars y diálogos',
      link: '/snackbars',
      icon: Icons.add_alert_outlined
  ),

  MenuItem(
      title: 'Animated container',
      subTitle: 'Stateful widgets animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded
  ),

  MenuItem(
    title: 'App Bar',
    subTitle: 'Una Barra de aplicaciones',
    link: '/appbar',
    icon: Icons.app_shortcut_outlined
  ),

  MenuItem(
    title: 'Tab Bar',
    subTitle: 'Una Barra de pestañas principal',
    link: '/tabbar',
    icon: Icons.table_chart
  ),
];

const appBarItems = <MenuItem>[
  MenuItem(
    title: 'AppBar one',
    subTitle: 'a simple AppBar',
    link:'/appbar/one',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
    title: 'AppBar two',
    subTitle: 'a AppBar with actions',
    link:'/appbar/two',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
    title: 'AppBar three',
    subTitle: 'a AppBar with the propieties ShadowColor and scrollUnderElevation',
    link:'/appbar/three',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  
  MenuItem(
    title: 'AppBar fourth',
    subTitle: 'a AppBar with notification of scroll',
    link:'/appbar/fourth',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),
];

const tabBarItems = <MenuItem>[
  MenuItem(
    title: 'TabBar one',
    subTitle: 'a tabBar using the widget  DefaultTabController to control the tabs, we are also making use of the isScrollable property of the TabBar widget',
    link:'/tabbar/one',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
    title: 'TabBar two',
    subTitle: 'TabBar nested',
    link:'/tabbar/two',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
    title: 'TabBar three',
    subTitle: 'TabBar controlled with a controller',
    link:'/tabbar/three',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),
];