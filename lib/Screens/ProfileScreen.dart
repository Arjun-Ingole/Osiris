import 'package:flutter/material.dart';
import 'package:osiris/Services/consts.dart';
import 'package:osiris/Widgets/BottomNavBar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        currentIndex: 2,
      ),
      extendBody: true,
      body: Container(
        color: background_primary,
      ),
    );
  }
}
