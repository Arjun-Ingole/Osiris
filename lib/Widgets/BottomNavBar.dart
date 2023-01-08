import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter/services.dart';
import 'package:osiris/Services/consts.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 16),
      decoration: BoxDecoration(
          color: accent_t.withOpacity(0.95),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              UniconsLine.home_alt,
              color: _currentIndex == 0 ? Colors.white : inactive_accent,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                _currentIndex = 0;
              });
            },
          ),
          IconButton(
            icon: Icon(
              UniconsLine.search,
              color: _currentIndex == 1 ? Colors.white : inactive_accent,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                _currentIndex = 1;
              });
            },
          ),
          IconButton(
            icon: Icon(
              UniconsLine.heart,
              color: _currentIndex == 2 ? Colors.white : inactive_accent,
            ),
            onPressed: () {
              HapticFeedback.mediumImpact();
              setState(() {
                _currentIndex = 2;
              });
            },
          ),
        ],
      ),
    );
  }
}
