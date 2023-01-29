import 'package:go_router/go_router.dart';
import 'package:osiris/Screens/LoginScreen.dart';
import 'package:osiris/Screens/MainScreen.dart';
import 'package:osiris/Screens/MovieScreen.dart';
import 'package:osiris/Screens/NavScreen.dart';
import 'package:osiris/Screens/ProfileScreen.dart';
import 'package:osiris/Screens/SearchScreen.dart';
import 'package:osiris/Screens/TvShowScreen.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const NavScreen(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/main',
    builder: (context, state) => const MainScreen(),
  ),
  GoRoute(
    path: '/search',
    builder: (context, state) => const SearchScreen(),
  ),
  GoRoute(
    path: '/profile',
    builder: (context, state) => const ProfileScreen(),
  ),
  GoRoute(
    path: '/movie/:id',
    builder: (context, state) => MovieScreen(state.params['id']!),
  ),
  GoRoute(
    path: '/tv/:id',
    builder: (context, state) => TVShowScreen(state.params['id']!),
  )
]);
