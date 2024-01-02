import 'package:go_router/go_router.dart';

import 'package:widget_app/presentation/screen/app_bar/screens/screens.dart';
import 'package:widget_app/presentation/screen/data_table/data_table_screen.dart';
import 'package:widget_app/presentation/screen/screen.dart';
import 'package:widget_app/presentation/screen/stack/screens/stacks.dart';
import 'package:widget_app/presentation/screen/tab_bar/screens/screens.dart';
import 'package:widget_app/presentation/shared/page_view/page_view_shared.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/counter',
      name: CounterScreen.name,
      builder: (context, state) => const CounterScreen(),
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),


    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),

    GoRoute(
      path: '/snackbars',
      name: SnackBarScreen.name,
      builder: (context, state) => const SnackBarScreen(),
    ),

    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),

    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.name,
      builder: (context, state) => const UiControlsScreen(),
    ),

    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),

    GoRoute(
      path: '/infiniteScroll',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),

    GoRoute(
      path: '/theme',
      name: ThemeChangerScreen.name,
      builder: (context, state) => const ThemeChangerScreen(),
    ),
  
    //? AppBar Routes 
    GoRoute(

      path: '/appbar',
      name: AppBarScreen.name,
      builder: (context, state) => const AppBarScreen(),
      routes: [
        GoRoute(
          path: 'one',
          name: FirstAppBarScreen.name,
          builder: (context, state) => const FirstAppBarScreen(),
        ),

        GoRoute(
          path: 'two',
          name: SecondAppBarScreen.name,
          builder: (context, state) => const SecondAppBarScreen(),
        ),

        GoRoute(
          path: 'three',
          name: ThirdAppBarScreen.name,
          builder: (context, state) => const ThirdAppBarScreen(),
        ),

        GoRoute(
          path: 'fourth',
          name: FourthAppBarScreen.name,
          builder: (context, state) => const FourthAppBarScreen(),
        ),
      ]
    ),

    //? TabBar Routes
    GoRoute(
      path: '/tabbar',
      name: TabBarScreen.name,
      builder: (context, state) => const TabBarScreen(),
      routes: [
        GoRoute(
          path: 'one',
          name: FirstTabBarScreen.name,
          builder: (context, state) => const FirstTabBarScreen(),
        ),

        GoRoute(
          path: 'two',
          name: SecondTabBarScreen.name,
          builder: (context, state) => const SecondTabBarScreen(),
        ),

        GoRoute(
          path: 'three',
          name: ThirdTabBarScreen.name,
          builder: (context, state) => const ThirdTabBarScreen(),
        ),
      ]
    ),

    //? Stack Routes
    GoRoute(
      path: '/stack',
      name: StackScreen.name,
      builder: (context, state) => const StackScreen(),
      routes: [
        GoRoute(
          path: 'one',
          name: FirstStackScreen.name,
          builder: (context, state) => const FirstStackScreen(),
        ),

        GoRoute(
          path: 'two',
          name: SecondStackScreen.name,
          builder: (context, state) => const SecondStackScreen(),
        ),
      ]
    ),

    GoRoute(
      path: '/customScrollView',
      name: ScrollViewSlivers.name,
      builder: (context, state) => const ScrollViewSlivers(),
      routes: [
        GoRoute(
          path: 'appbar-list',
          name: SliverAppbarAndList.name,
          builder: (context, state) => const SliverAppbarAndList(),
        ),

        GoRoute(
          path: 'grid',
          name: CustomSliverGrid.name,
          builder: (context, state) => const CustomSliverGrid(),
        ),
      ]
      
    ),

    // ? Chips Routes
    GoRoute(
      path: '/chips',
      name: ChipsScreen.name,
      builder: (context, state) => const ChipsScreen(),
      routes: [
        GoRoute(
          path: 'chip',
          name: ChipBasicScreen.name,
          builder: (context, state) => const ChipBasicScreen(),
        ),

        GoRoute(
          path: 'input-chip',
          name: InputChipScreen.name,
          builder: (context, state) => const InputChipScreen(),
        ),

        GoRoute(
          path: 'choice-chip',
          name: ChoiceChipScreen.name,
          builder: (context, state) => const ChoiceChipScreen(),
        ),

        GoRoute(
          path: 'filter-chip',
          name: FilterChipScreen.name,
          builder: (context, state) => const FilterChipScreen(),
        ),

        GoRoute(
          path: 'action-chip',
          name: ActionChipScreen.name,
          builder: (context, state) => const ActionChipScreen(),
        ),
      ]
    ),

    GoRoute(
      path:'/safe_area',
      name:SafeAreaScreen.name,
      builder: (context, state) => const SafeAreaScreen(),
    ),

    GoRoute(
      path:'/expanded',
      name:ExpandedScreen.name,
      builder: (context, state) => const ExpandedScreen(),
    ),

    GoRoute(
      path: '/wrap',
      name: WrapScreen.name,
      builder: (context, state) => const WrapScreen(),
    ),

    GoRoute(
      path: '/opacity',
      name: OpacityScreen.name,
      builder: (context, state) => const OpacityScreen(),
    ),

    GoRoute(
      path: '/animated_opacity',
      name: AnimatedOpacityScreen.name,
      builder: (context, state) => const AnimatedOpacityScreen(),
    ),

    GoRoute(
      path: '/future_builder',
      name: FutureBuilderScreen.name,
      builder: (context, state) => const FutureBuilderScreen(),
    ),


    GoRoute(
      path: '/fade_transition',
      name: FadeTransitionScreen.name,
      builder: (context, state) => const FadeTransitionScreen(),
    ),

    GoRoute(
      path: '/floating_button',
      name: FloatingActionButtonScreen.name,
      builder: (context, state) => const FloatingActionButtonScreen(),
    ),

    // ? PageView Routes
    GoRoute(
      path: '/page_view',
      name: PageViewScreen.name,
      builder: (context, state) => const PageViewScreen(),
      routes: [
        GoRoute(
          path: 'one',
          name: PageViewOneScreen.name,
          builder: (context, state) => const PageViewOneScreen(),
        ),

        GoRoute(
          path: 'two',
          name: PageViewTwoScreen.name,
          builder: (context, state) => PageViewTwoScreen(children: cardList),
        ),
      ]
    ),


    GoRoute(
      path: '/table',
      name: TableScreen.name,
      builder: (context, state) => const TableScreen(),
    ),


    GoRoute(
      path: '/fade_in_image',
      name: FadeInImageScreen.name,
      builder: (context, state) => const FadeInImageScreen(),
    ),

    GoRoute(
      path: '/stream_builder',
      name: StreamBuilderScreen.name,
      builder: (context, state) => const StreamBuilderScreen(),
    ),

    GoRoute(
      path: '/inherited_widget',
      name: InheritedWidgetScreen.name,
      builder: (context, state) => const InheritedWidgetScreen(),
    ), 


    GoRoute(
      path: '/clips',
      name: ClipRRectClipOvalClipPathScreen.name,
      builder: (context, state) => const ClipRRectClipOvalClipPathScreen(),
    ),

    GoRoute(
      path: '/hero',
      name: HeroScreen.name,
      builder: (context, state) => const HeroScreen(),
      routes: [
        GoRoute(
          path: 'one',
          name: HeroNormalScreen.name,
          builder: (context, state) => const HeroNormalScreen(),
        ),

        GoRoute(
          path: 'two',
          name: HeroRectTween.name,
          builder: (context, state) => const HeroRectTween(),
        ),
      ]
    ),

    GoRoute(
      path: '/custom_painter',
      name: CustomPainterScreen.name,
      builder: (context, state) => const CustomPainterScreen(),
    ),


    GoRoute(
      path: '/tooltip',
      name: ToolTipScreen.name,
      builder: (context, state) => const ToolTipScreen(),
    ),

    GoRoute(
      path: '/fitted_box',
      name: FittedBoxScreen.name,
      builder: (context, state) => const FittedBoxScreen(),
    ),

    GoRoute(
      path: '/layout_builder',
      name: LayoutBuilderScreen.name,
      builder: (context, state) => const LayoutBuilderScreen(),
    ),

    GoRoute(
      path: '/absorb_pointer',
      name: AbsorbPointerScreen.name,
      builder: (context, state) => const AbsorbPointerScreen(),
    ),

    GoRoute(
      path: '/backdrop_filter',
      name: BackdropFilterScreen.name,
      builder: (context, state) => const BackdropFilterScreen(),
    ),

    GoRoute(
      path: '/image_filtered',
      name: ImageFilteredScreen.name,
      builder: (context, state) => const ImageFilteredScreen(),
    ),

    GoRoute(
      path: '/align',
      name: AlignScreen.name,
      builder: (context, state) => const AlignScreen(),
      routes: [
        GoRoute(
          path: 'one',
          name: AlingScreenOne.name,
          builder: (context, state) => const AlingScreenOne(),
        ),

        GoRoute(
          path: 'two',
          name: AlignScreenTwo.name,
          builder: (context, state) => const AlignScreenTwo(),
        ),
      ]
    ),


   GoRoute(
      path: '/dismissible',
      name: DismissibleScreen.name,
      builder: (context, state) => const DismissibleScreen(),
    ),

    GoRoute(
      path: '/value-notifier',
      name: ValueNotifierScreen.name,
      builder: (context, state) => const ValueNotifierScreen(),
    ),

    GoRoute(
      path: '/animate-list',
      name: AnimateListScreen.name,
      builder: (context, state) => const AnimateListScreen(),
    ),

    GoRoute(
      path: '/flexible',
      name: FlexibleScreen.name,
      builder: (context, state) => const FlexibleScreen(),
    ),

    GoRoute(
      path: '/media-query',
      name: MediaQueryScreen.name,
      builder: (context, state) => const MediaQueryScreen(),
    ),

    GoRoute(
      path: '/spacer',
      name: SpacerScreen.name,
      builder: (context, state) => const SpacerScreen(),
    ),

    GoRoute(
      path: '/animated-icon',
      name: AnimatedIconScreen.name,
      builder: (context, state) => const AnimatedIconScreen(),
    ),

    GoRoute(
      path: '/aspect-ratio',
      name: AspectRatioScreen.name,
      builder: (context, state) => const AspectRatioScreen(),
    ),

    GoRoute(
      path: '/limited-box',
      name: LimitedBoxScreen.name,
      builder: (context, state) => const LimitedBoxScreen(),
      routes: [
        GoRoute(
          path: 'one',
          name: LimitedBoxOneScreen.name,
          builder: (context, state) => const LimitedBoxOneScreen(),
        ),

        GoRoute(
          path: 'two',
          name: LimitedBoxTwoScreen.name,
          builder: (context, state) => const LimitedBoxTwoScreen(),
        ),
      ]
    ),

    GoRoute(
      path: '/rich-text',
      name: RichTextScreen.name,
      builder: (context, state) => const RichTextScreen(),
    ),

    GoRoute(
      path: '/reorderable-list',
      name: ReorderableListViewScreen.name,
      builder: (context, state) => const ReorderableListViewScreen(),
      routes: [
        GoRoute(
          path: 'one',
          name: ReorderableListOneScreen.name,
          builder: (context, state) => const ReorderableListOneScreen(),
        ),

        GoRoute(
          path: 'two',
          name: ReorderableListTwoScreen.name,
          builder: (context, state) => const ReorderableListTwoScreen(),
        ),
      ]
    ),

    GoRoute(
      path: '/animated-switcher',
      name: AnimatedSwitcherScreen.name,
      builder: (context, state) => const AnimatedSwitcherScreen(),
    ),

    GoRoute(
      path: '/animated-positioned',
      name: AnimatedPostionedScreen.name,
      builder: (context, state) => const AnimatedPostionedScreen(),
    ),

    GoRoute(
      path: '/animated-padding',
      name: AnimatedPaddingScreen.name,
      builder: (context, state) => const AnimatedPaddingScreen(),
    ),


    GoRoute(
      path: '/indexed-stack',
      name: IndexedStackScreen.name,
      builder: (context, state) => const IndexedStackScreen(),
    ),

    GoRoute(
      path: '/constrained-box',
      name: ConstrainedBoxScreen.name,
      builder: (context, state) => const ConstrainedBoxScreen(),
    ),

    GoRoute(
      path: '/fractionally-size-box',
      name: FractionallySizeBoxScreen.name,
      builder: (context, state) => const FractionallySizeBoxScreen(),
    ),

    GoRoute(
      path: '/container',
      name: ContainerScreen.name,
      builder: (context, state) => const ContainerScreen(),
    ),

    GoRoute(
      path: '/selectable-text',
      name: SelectableTextScreen.name,
      builder: (context, state) => const SelectableTextScreen(),
    ),

    GoRoute(
      path: '/data-table',
      name: DataTableScreen.name,
      builder: (context, state) => const DataTableScreen(),
    ),

    GoRoute(
      path: '/slider',
      name: SliderScreen.name,
      builder: (context, state) =>const SliderScreen(),
      routes: [
        GoRoute(
          path: 'one',
          builder: (context, state) => const SliderOne(),
        ),

        GoRoute(
          path: 'two',
          builder: (context, state) => const SliderTwo(),
        ),
      ]
    ),

    GoRoute(
      path: '/alert-dialog',
      builder: (context, state) => const AlertDialog(),
      routes: [
        GoRoute(
          path: 'one',
          builder: (context, state) => const AlertDialogScreen(),
        ),

        GoRoute(
          path: 'two',
          builder: (context, state) => const CupertinoAlertDialogScreen(),
        ),
      ]
    ),

    GoRoute(
      path: '/animated-cross-fade',
      builder: (context, state) => const AnimatedCrossFadeScreen(),
    ),

    GoRoute(
      path: '/draggable-scrollable-sheet',
      builder: (context, state) => const DraggableScrollableSheetScreen(),
    ),

  ],
);