
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
        title: 'Counter',
        subTitle: 'Manejo de un counter con Riverpod',
        link: '/counter',
        icon: Icons.onetwothree_rounded
    ),

    MenuItem(
        title: 'Theme',
        subTitle: 'Manejo del tema junto a Riverpod',
        link: '/theme',
        icon: Icons.color_lens_outlined
    ),
    
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
      title: 'Ui control + tiles',
      subTitle: 'Serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.switch_right_rounded
  ),

  MenuItem(
      title: 'Introducción a la aplicación ',
      subTitle: 'Tutorial introductorio',
      link: '/tutorial',
      icon: Icons.accessible_rounded
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

  MenuItem(
    title: 'Infinite Scroll',
    subTitle: 'Una pantalla con scroll infinito',
    link: '/infiniteScroll',
    icon: Icons.line_weight_sharp
  ),

  MenuItem(
    title: 'Stack',
    subTitle: 'Widget que permite superponer varios elementos segundarios',
    link: '/stack',
    icon: Icons.stacked_bar_chart_outlined
  ),

  MenuItem(
    title: 'Custom scroll view',
    subTitle: 'Un scroll view que crea efectos de desplazamiento perzonalizados utilizando sliver o fragmentos ',
    link: '/customScrollView',
    icon: Icons.line_weight_sharp
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

const stackBarItems = <MenuItem>[
  MenuItem(
    title: 'Stack one',
    subTitle: 'first example',
    link:'/stack/one',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
    title: 'Stack two',
    subTitle: 'Ejemplo practico de como podemos usar un stack',
    link:'/stack/two',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

];

const customSliversItems = <MenuItem>[
  MenuItem(
    title: 'SliverAppBar y SliverList',
    subTitle: 'first example',
    link:'/customScrollView/appbar-list',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
    title: 'SliverGrid',
    subTitle: 'Ejemplo practico de como podemos usar un stack',
    link:'/customScrollView/grid',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

];

