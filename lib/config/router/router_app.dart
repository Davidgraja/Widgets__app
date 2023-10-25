import 'package:go_router/go_router.dart';

import 'package:widget_app/presentation/screen/app_bar/screens/screens.dart';
import 'package:widget_app/presentation/screen/screen.dart';
import 'package:widget_app/presentation/screen/stack/screens/stacks.dart';
import 'package:widget_app/presentation/screen/tab_bar/screens/screens.dart';

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
    
  ],
);