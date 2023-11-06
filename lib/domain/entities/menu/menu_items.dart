
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
      title: 'AnimatedContainer',
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
    title: 'AppBar',
    subTitle: 'Una Barra de aplicaciones',
    link: '/appbar',
    icon: Icons.app_shortcut_outlined
  ),

  MenuItem(
    title: 'TabBar',
    subTitle: 'Una Barra de pestañas principal',
    link: '/tabbar',
    icon: Icons.table_chart
  ),

  MenuItem(
    title: 'InfiniteScroll',
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
    title: 'CustomScrollView',
    subTitle: 'Un scroll view que crea efectos de desplazamiento perzonalizados utilizando sliver o fragmentos ',
    link: '/customScrollView',
    icon: Icons.line_weight_sharp
  ),
  
  MenuItem(
    title: 'Chips',
    subTitle: 'elementos compactos que representan un atributo , texto , entidad o acción',
    link: '/chips',
    icon: Icons.swap_horizontal_circle_sharp
  ),

  MenuItem(
  title: 'SafeArea',
  subTitle: 'Un Widget que inserta a su hijo con su relleno para evitar intrusiones del sistema operativo',
  link: '/safe_area',
  icon: Icons.border_inner_outlined
  ),

  MenuItem(
  title: 'Expanded',
  subTitle: 'Un Widget que expanded un elemento secundario dentro de un row , column o flex , para que el elemento secundario tome o llene el espacio disponible',
  link: '/expanded',
  icon: Icons.settings_ethernet_rounded
  ),

  MenuItem(
  title: 'Wrap',
  subTitle: 'Un Widget que  presenta cada uno de sus hijos  segun el eje principal , si no hay suficiente espacio para colocar todos los hijos en una fila o columna este creara un tramo adyacente para colocar allí a sus hijos',
  link: '/wrap',
  icon: Icons.wrap_text_outlined
  ),

  MenuItem(
  title: 'Opacity',
  subTitle: 'Un widget que hace que su hijo sea parcialmente transparente , Sus valores de opacidad van de 0.0 a 1.0',
  link: '/opacity',
  icon: Icons.opacity_outlined
  ),

  MenuItem(
  title: 'AnimatedOpacity',
  subTitle: 'Un widget que utiliza una animación internamente para animar de manera eficiente la opacidad',
  link: '/animated_opacity',
  icon: Icons.opacity_outlined
  ),

  MenuItem(
    title: 'FutureBuilder',
    subTitle: 'Un widget que se construye basandose en el ultimo resultado de un Future',
    link: '/future_builder',
    icon: Icons.cloud_circle
  ),

  MenuItem(
    title: 'FadeTransition',
    subTitle: 'Anima la opacidad de un widget',
    link: '/fade_transition',
    icon: Icons.fiber_smart_record_outlined
  ),

  MenuItem(
    title: 'FloatingActionButton',
    subTitle: 'Un botón de  accion flotante , Un botón de acción flotante es un botón de icono circular que se desplaza sobre el contenido para promover una acción principal en la aplicación.',
    link: '/floating_button',
    icon: Icons.radio_button_off_rounded
  ),

  MenuItem(
      title: 'PageView',
      subTitle: 'Widget que proporciona una lista desplazable que funciona pagina por pagina',
      link: '/page_view',
      icon: Icons.pages
  ),

  MenuItem(
      title: 'Table',
      subTitle: 'un widget que utiliza el algoritmo de diseño de tabla para sus hijos',
      link: '/table',
      icon: Icons.grid_on_rounded
  ),

  MenuItem(
      title: 'FadeinImage',
      subTitle: 'un widget que muestra una imagen o placeholder mientras se carga una imagen traida desde internet , una vez cargada el placeholder se desvanecera',
      link: '/fade_in_image',
      icon: Icons.image
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

const chipsItems = <MenuItem>[
  MenuItem(
    title: 'Chip',
    subTitle: 'chip mas comun',
    link:'/chips/chip',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
    title: 'Input chip',
    subTitle: 'los input chip pueden ser selecionables , configurando propiedades como onSeleted , onDeleted , onPressed',
    link:'/chips/input-chip',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
    title: 'Choice chip',
    subTitle: 'Los ChoicesChip representan una única elección de un conjunto',
    link:'/chips/choice-chip',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
    title: 'Filter chip',
    subTitle: 'Los FilterChip sonuna buena alternativa a los widgets Checkbox o switch ,A diferencia de estas alternativas, los chips de filtro permiten opciones claramente delineadas y expuestas en un área compacta. ',
    link:'/chips/filter-chip',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

   MenuItem(
    title: 'Action chip',
    subTitle: 'los chips de acción son un conjunto de opciones que desencadenan una acción relacionada con el contenido principal. Los chips de acción deberían aparecer dinámica y contextualmente en una interfaz de usuario.',
    link:'/chips/action-chip',
    icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

];

const pageViewsitems = <MenuItem>[

  MenuItem(
      title: 'Page view one',
      subTitle: 'Page view a pantalla completa',
      link:'/page_view/one',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
      title: 'Page view two',
      subTitle: ' Page view en cards',
      link:'/page_view/two',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

];