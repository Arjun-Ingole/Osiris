import 'package:flutter/material.dart';
import 'package:osiris/screen/HomeScreen.dart';

void main() => runApp(MaterialApp(home: App()));

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
