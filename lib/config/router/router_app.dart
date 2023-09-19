import 'package:go_router/go_router.dart';

import 'package:widget_app/presentation/screen/app_bar/screens/screens.dart';
import 'package:widget_app/presentation/screen/screen.dart';
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
  
    //? AppBar Routes 

    GoRoute(
      path: '/appbar',
      name: AppBarScreen.name,
      builder: (context, state) => const AppBarScreen(),
    ),

    GoRoute(
      path: '/appbar/one',
      name: FirstAppBarScreen.name,
      builder: (context, state) => const FirstAppBarScreen(),
    ),

    GoRoute(
      path: '/appbar/two',
      name: SecondAppBarScreen.name,
      builder: (context, state) => const SecondAppBarScreen(),
    ),

    GoRoute(
      path: '/appbar/three',
      name: ThirdAppBarScreen.name,
      builder: (context, state) => const ThirdAppBarScreen(),
    ),

    GoRoute(
      path: '/appbar/fourth',
      name: FourthAppBarScreen.name,
      builder: (context, state) => const FourthAppBarScreen(),
    ),

    //? TabBar Routes

    GoRoute(
      path: '/tabbar',
      name: TabBarScreen.name,
      builder: (context, state) => const TabBarScreen(),
    ),

    GoRoute(
      path: '/tabbar/one',
      name: FirstTabBarScreen.name,
      builder: (context, state) => const FirstTabBarScreen(),
    ),

    GoRoute(
      path: '/tabbar/two',
      name: SecondTabBarScreen.name,
      builder: (context, state) => const SecondTabBarScreen(),
    ),

    GoRoute(
      path: '/tabbar/three',
      name: ThirdTabBarScreen.name,
      builder: (context, state) => const ThirdTabBarScreen(),
    ),
  ],
);