import 'package:flutter/material.dart';
import 'package:osiris/Services/consts.dart';
import 'package:osiris/Widgets/BottomNavBar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(currentIndex: 1),
      extendBody: true,
      body: Container(
        color: background_primary,
      ),
    );
  }
}
