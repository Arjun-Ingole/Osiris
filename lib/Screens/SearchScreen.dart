import 'package:flutter/material.dart';
import 'package:osiris/Services/consts.dart';
import 'package:osiris/Widgets/BottomNavBar.dart';
import 'package:unicons/unicons.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: background_primary,
        bottomNavigationBar: BottomNavBar(currentIndex: 1),
        extendBody: true,
        body: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            // Container(
            //   width: size.width,
            //   decoration: const BoxDecoration(
            //       image: DecorationImage(
            //           fit: BoxFit.fitWidth,
            //           image: AssetImage('assets/backdrop.png'))),
            // ),
            Image.asset(
              'assets/backdrop.png',
              fit: BoxFit.fitWidth,
              width: size.width,
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.fromLTRB(8, 28, 8, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: accent_t.withOpacity(0.95),
              ),
              child: TextField(
                cursorColor: accent_secondary,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      UniconsLine.search,
                      color: Colors.white,
                    ),
                    prefixIconColor: Colors.white),
              ),
            ),
          ],
        ));
  }
}
