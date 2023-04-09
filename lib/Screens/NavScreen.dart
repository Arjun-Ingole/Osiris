import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:osiris/Screens/LoginScreen.dart';
import 'package:osiris/Screens/MainScreen.dart';

class NavScreen extends StatefulWidget with RouteAware {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          return snapshot.hasData ? MainScreen() : LoginScreen();
        },
      ),
    );
  }
}
