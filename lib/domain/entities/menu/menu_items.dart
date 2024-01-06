
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

  MenuItem(
      title: 'StreamBuilder',
      subTitle: 'un widget que se construye a si mismo en función del ultimo flujo de datos añadido al stream',
      link: '/stream_builder',
      icon: Icons.stream_rounded
  ),

  MenuItem(
      title: 'InheritedWidget',
      subTitle: 'Clase base para widgets que permite la propagación de información de manera eficiente por el arbol de widgets',
      link: '/inherited_widget',
      icon: Icons.widgets_rounded
  ),


  MenuItem(
      title: 'ClipRRect , ClipOval , ClipPath',
      subTitle: 'Widgets que permiten dar recortes redondeados , ovalados y personalizados ',
      link: '/clips',
      icon: Icons.rounded_corner_rounded
  ),

  MenuItem(
      title: 'Hero',
      subTitle: 'Widget que permite  realizar  una animacion sobre otro widget al navegar hacia otra pantalla dentro de la aplicación donde se recomienda este el mismo widget de la pantalla anterior  ',
      link: '/hero',
      icon: Icons.animation_rounded
  ),

  MenuItem(
      title: 'CustomPainter',
      subTitle: 'widget que proporciona un lienzo y usa un painter para ejecutar comandos de pintura',
      link: '/custom_painter',
      icon: Icons.format_paint_rounded
  ),

  MenuItem(
      title: 'Tooltip',
      subTitle: 'widget que permite dar información sobre otros widgets de la UI',
      link: '/tooltip',
      icon: Icons.tips_and_updates_outlined
  ),

  MenuItem(
      title: 'FittedBox',
      subTitle: 'widget que permite escalar y ajustar a su hijo segun su ajuste',
      link: '/fitted_box',
      icon: Icons.fit_screen_outlined
  ),

  MenuItem(
      title: 'LayoutBuilder',
      subTitle: 'widget que permite saber el tamaño de la pantalla y segun el tamaño construye los widgets defenidos para  cada tamaño',
      link: '/layout_builder',
      icon: Icons.lan_rounded
  ),

  MenuItem(
      title: 'AbsorbPointer',
      subTitle: 'widget que evita que sus hijos reciban eventos',
      link: '/absorb_pointer',
      icon: Icons.ads_click_rounded
  ),

  MenuItem(
      title: 'backdropFilter',
      subTitle: 'widget que aplica un ImageFilter o filtro al contenido pintado existente y luego pinta el contenido segundario,l filtro se aplicará a toda el área dentro del clip de su widget principal o ancestro. Si no hay ningún clip, el filtro se aplicará a la pantalla completa ',
      link: '/backdrop_filter',
      icon: Icons.filter
  ),

  MenuItem(
      title: 'ImageFiltered',
      subTitle: 'widget que aplica un ImageFilter o filtro a su hijo',
      link: '/image_filtered',
      icon: Icons.filter
  ),

  MenuItem(
      title: 'Align',
      subTitle: 'widget que alinea a su hijo dentro de si mismo  y opcionalmente se dimensiona segun el tamaño del hijo',
      link: '/align',
      icon: Icons.align_vertical_center_rounded
  ),

  MenuItem(
      title: 'Dismissible',
      subTitle: 'widget que puede descargar elementos hijos de la vista  arrastrando en la dirección  correcta',
      link: '/dismissible',
      icon: Icons.sledding_rounded
  ),

  MenuItem(
      title: 'ValueNotifier',
      subTitle: 'widget que permite mantener actualizados y sincronizados a aquellos widgets que escuchen su información ',
      link: '/value-notifier',
      icon: Icons.update_outlined
  ),

  MenuItem(
      title: 'AnimateList',
      subTitle: 'widget que añade animación  de una lista al añadir o eliminar elementos',
      link: '/animate-list',
      icon: Icons.filter_list_outlined
  ),

  MenuItem(
      title: 'Flexible',
      subTitle: 'Widget que controla que tan flexible puede ser un elemento dentro de un Row , Column o flex',
      link: '/flexible',
      icon: Icons.expand
  ),

  MenuItem(
      title: 'MediaQuery',
      subTitle: 'Widget que proporciona información del dispositivo',
      link: '/media-query',
      icon: Icons.info
  ),

   MenuItem(
      title: 'Spacer',
      subTitle: 'Widget que permite personalizar la distrución del espacio dentro de Column, Row , etc',
      link: '/spacer',
      icon: Icons.space_bar_outlined
  ),

  MenuItem(
      title: 'AnimatedIcon',
      subTitle: 'Widget que permite animar un icono',
      link: '/animated-icon',
      icon: Icons.animation_outlined
  ),

  MenuItem(
      title: 'AspectRatio',
      subTitle: 'Widget que  intenta ajustar el tamaño del hijo en relación al aspecto dado',
      link: '/aspect-ratio',
      icon: Icons.aspect_ratio_outlined
  ),

  MenuItem(
      title: 'LimitedBox',
      subTitle: 'Widget que limita su tamaño sólo cuando no tiene restricciones',
      link: '/limited-box',
      icon: Icons.check_box_outline_blank_outlined
  ),

  MenuItem(
      title: 'RichText',
      subTitle: 'Widget que permite mostrar  un texto con diferentes tamaños , estilos y diferentes estilos',
      link: '/rich-text',
      icon: Icons.text_rotation_angledown_outlined
  ),

  MenuItem(
      title: 'ReorderableListView',
      subTitle: 'Widget que permite reordenar los elementos de una lista',
      link: '/reorderable-list',
      icon: Icons.reorder_outlined
  ),

  MenuItem(
      title: 'AnimatedSwitcher',
      subTitle: 'Widget que realiza una animación de cambio entre widgets',
      link: '/animated-switcher',
      icon: Icons.animation_outlined
  ),

  MenuItem(
      title: 'AnimatedPositioned',
      subTitle: 'Widget que cambia la posición del hijo junto a una animación , solo es posible usarlo dentro de un Stack',
      link: '/animated-positioned',
      icon: Icons.animation_outlined
  ),

  MenuItem(
      title: 'AnimatedPadding',
      subTitle: 'Widget realiza el cambio de padding de su hijo junto a una animación',
      link: '/animated-padding',
      icon: Icons.animation_outlined
  ),

  MenuItem(
      title: 'IndexedStack',
      subTitle: 'Un Stack que muestra a un unico hijo , se mostrara aquel hijo que se encuentre en el index enviado, Algo importante es que mantiene el estado de todos los hijos , sin importar si cambiamos entre estos',
      link: '/indexed-stack',
      icon: Icons.stacked_bar_chart_outlined
  ),


  MenuItem(
      title: 'ConstrainedBox',
      subTitle: 'Widget que impone restricciones adicionales a su hijo',
      link: '/constrained-box',
      icon: Icons.check_box_outline_blank_outlined
  ),

   MenuItem(
      title: 'FractionallySizeBox',
      subTitle: 'Widget que dimensiona a su hijo a una fracción del espacio total',
      link: '/fractionally-size-box',
      icon: Icons.check_box_outline_blank_outlined
  ),

  MenuItem(
      title: 'Container',
      subTitle: 'Widget que envuelve  a su hijo y permite dar efectos de pintura , posicionamiento y taamaño',
      link: '/container',
      icon: Icons.check_box_outline_blank_outlined
  ),

  MenuItem(
      title: 'SelectableText',
      subTitle: 'Widget que permite editar  y dar estilo a la selección de texto',
      link: '/selectable-text',
      icon: Icons.short_text_rounded
  ),

  MenuItem(
      title: 'DataTable',
      subTitle: 'Widget que  permite mostrar informacion en una tabla de forma mas sencilla y en base a material desing ',
      link: '/data-table',
      icon: Icons.grid_on_rounded
  ),

  MenuItem(
      title: 'Slider',
      subTitle: 'Widget que te permite seleccionar entre un rango de valores',
      link: '/slider',
      icon: Icons.settings_ethernet_outlined
  ),

  MenuItem(
      title: 'AlertDialog',
      subTitle: 'Widget que te permite mostrarle mensajes de alerta y opciones al usuario ,como nota adicional podemos usar  showAdaptiveDialog y  AlertDialog.adaptive para que dependiendo de la plaforma se cree el alert especifico a esa plataforma  , caso contrario podemos usar los ejemplos en este apartado',
      link: '/alert-dialog',
      icon: Icons.messenger_outline_rounded
  ),

  MenuItem(
      title: 'AnimatedCrossFade',
      subTitle: 'Widget que fuciona una animación de cambio entre dos hijos',
      link: '/animated-cross-fade',
      icon: Icons.animation_outlined
  ),

  MenuItem(
      title: 'DraggableScrollableSheet',
      subTitle: 'Contenedor para un elemento desplazable el cual responde a los getos de arrastre',
      link: '/draggable-scrollable-sheet',
      icon: Icons.line_weight_sharp
  ),

   MenuItem(
      title: 'ColorFiltered',
      subTitle: 'Widget que aplica un color de filtro a su hijo',
      link: '/color-filtered',
      icon: Icons.format_color_fill_outlined
  ),

  MenuItem(
      title: 'ToggleButtons',
      subTitle: 'Widget que  muestra un conjunto de botones de alternacia al usuario',
      link: '/toggle-buttons',
      icon: Icons.widgets_outlined
  ),


  MenuItem(
      title: 'CupertinoActionSheet',
      subTitle: 'Widget muestra una hoja de acción o de alerta al usuario con dos o mas opciones segun el contexto',
      link: '/cupertino-action-sheet',
      icon: Icons.messenger_outline_rounded
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

const heroItems = <MenuItem>[
  MenuItem(
      title: 'Hero normal',
      subTitle: 'Uso basico de el widget hero',
      link:'/hero/one',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
      title: 'Hero rect Tween',
      subTitle: 'Ejemplo practico de animaciones de vuelo de hero utilizando la interpolación prederteminada y la interpolación recta personalizada',
      link:'/hero/two',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),
];

const alignItems = <MenuItem>[
  MenuItem(
      title: 'Align con propiedades estaticas',
      subTitle: 'Alineación con la clase Alignment y sus porpiedes estaticas ',
      link:'/align/one',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
      title: 'Align con valores numericos',
      subTitle: 'Alineación con valores numericos con la clase Alignment ',
      link:'/align/two',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),
];

const limitedBoxItems = <MenuItem>[
  MenuItem(
      title: 'Ejemplo 1',
      subTitle: '',
      link:'/limited-box/one',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
      title: 'Ejemplo 1',
      subTitle: 'LimitedBox aplicado a ListView',
      link:'/limited-box/two',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),
];

const reorderableItems = <MenuItem>[
  MenuItem(
      title: 'ReorderableListView basico',
      subTitle: 'Ejemplo basico aplicado a un ListTile',
      link:'/reorderable-list/one',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
      title: 'ReorderableListView con animación',
      subTitle: 'ReorderableListView con animación al realizar el reordaminento de la lista',
      link:'/reorderable-list/two',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),
];

const sliderItems = <MenuItem>[
  MenuItem(
      title: 'Slider basicos',
      subTitle: 'Sliders basicos , personalizados  y adaptativos  tanto para IOS como android',
      link:'/slider/one',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
      title: 'RangeSlider',
      subTitle: 'Slider que permite seleccionar un subconjunto rango de valores',
      link:'/slider/two',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),
];

const alertDialogItems = <MenuItem>[
  MenuItem(
      title: 'AlertDialog en Material (Android , linx , etc)',
      subTitle: 'showDialog y AlertDialog',
      link:'/alert-dialog/one',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),

  MenuItem(
      title: 'CupertinoAlertDialog para Cupertino (IOS , Mac)',
      subTitle: 'ShowCupertinoDialog y CupertinoAlertDialog',
      link:'/alert-dialog/two',
      icon: Icons.do_not_disturb_on_total_silence_rounded
  ),
];