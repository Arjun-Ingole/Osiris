import 'package:osiris/Screens/LoginScreen.dart';
import 'package:osiris/Screens/MainScreen.dart';
import 'package:osiris/Screens/NavScreen.dart';
import 'package:osiris/Screens/ProfileScreen.dart';
import 'package:osiris/Screens/SearchScreen.dart';

var appRoutes = {
  '/': (context) => const NavScreen(),
  '/login': (context) => const LoginScreen(),
  '/main': (context) => const MainScreen(),
  '/search': (context) => const SearchScreen(),
  '/profile': (context) => const ProfileScreen(),
};
