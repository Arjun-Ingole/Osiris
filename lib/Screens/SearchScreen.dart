import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:osiris/Services/API.dart';
import 'package:osiris/Services/consts.dart';
import 'package:osiris/Widgets/BottomNavBar.dart';
import 'package:osiris/Widgets/SearchList.dart';
import 'package:unicons/unicons.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  ScrollController _scrollController = ScrollController();
  bool isVisible = true;
  bool isLoading = true;
  final myController = TextEditingController();
  String query = "";

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(listen);
  }

  @override
  void dispose() {
    super.dispose();
    myController.dispose();
    _scrollController.removeListener(listen);
    _scrollController.dispose();
  }

  void listen() {
    final direction = _scrollController.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      show();
    } else if (direction == ScrollDirection.reverse) {
      hide();
    }
  }

  void show() {
    if (!isVisible) {
      (setState(
        () => isVisible = true,
      ));
    }
  }

  void hide() {
    if (isVisible) {
      (setState(
        () => isVisible = false,
      ));
    }
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: background_primary,
            bottomNavigationBar: AnimatedBuilder(
                animation: _scrollController,
                builder: ((context, child) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: isVisible ? 75 : 0,
                    child: BottomNavBar(
                      currentIndex: 1,
                    ),
                  );
                })),
            extendBody: true,
            body: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Image.asset(
                  'assets/backdrop.png',
                  fit: BoxFit.fitWidth,
                  width: size.width,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      margin: const EdgeInsets.fromLTRB(8, 28, 8, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: accent_t.withOpacity(0.95),
                      ),
                      child: TextField(
                        controller: myController,
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
                        onChanged: (value) {
                          setState(() {
                            query = myController.text;
                          });
                        },
                      ),
                    ),
                    SearchList(
                        APIService().getSearchResult(query), _scrollController)
                  ],
                ),
              ],
            )),
        onWillPop: () async {
          GoRouter.of(context).go('/main');
          return false;
        });
  }
}
