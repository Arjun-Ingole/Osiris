import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:osiris/Screens/WatchListScreen.dart';
import 'package:osiris/Services/auth.dart';
import 'package:osiris/Services/consts.dart';
import 'package:osiris/Widgets/BottomNavBar.dart';
import 'package:provider/provider.dart';
import 'package:osiris/Widgets/LoadingScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ScrollController _scrollController = ScrollController();
  bool isVisible = true;
  bool isLoading = true;
  late List watchlist;
  List completed = [];
  List watching = [];
  List onhold = [];
  List dropped = [];

  @override
  void initState() {
    super.initState();
    fetchData();
    _scrollController = ScrollController();
    _scrollController.addListener(listen);
  }

  @override
  void dispose() {
    _scrollController.removeListener(listen);
    _scrollController.dispose();
    super.dispose();
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

  void fetchData() async {
    watchlist = await FireBaseServices().getWatchList();
    for (int i = 0; i < watchlist.length; i++) {
      if (watchlist[i]["status"] == "Completed") {
        completed.add(watchlist[i]);
      } else if (watchlist[i]["status"] == "Watching") {
        watching.add(watchlist[i]);
      } else if (watchlist[i]["status"] == "On-Hold") {
        onhold.add(watchlist[i]);
      } else if (watchlist[i]["status"] == "Dropped") {
        dropped.add(watchlist[i]);
      }
    }
    setState(() {
      isLoading = false;
    });
  }

  final User _user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBuilder(
          animation: _scrollController,
          builder: ((context, child) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              curve: Curves.fastLinearToSlowEaseIn,
              height: isVisible ? 75 : 0,
              child: BottomNavBar(
                currentIndex: 2,
              ),
            );
          })),
      backgroundColor: background_primary,
      extendBody: true,
      body: isLoading
          ? LoadingScreen()
          : Container(
              child: ListView(
                controller: _scrollController,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(top: 0),
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              _user.photoURL.toString(),
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                            child: Container(
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              background_primary.withOpacity(0.50),
                              background_primary.withOpacity(0.75),
                              background_primary.withOpacity(1.00),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20, bottom: 20),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  image:
                                      NetworkImage(_user.photoURL.toString()),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(left: 20, bottom: 20),
                            child: Text(
                              _user.displayName.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            final provider = Provider.of<GoogleSignInProvider>(
                                context,
                                listen: false);
                            provider.logout();
                            GoRouter.of(context).pushReplacement('/');
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(
                              right: 25,
                              bottom: 200,
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFF14303B).withOpacity(0.25),
                                border: Border.all(
                                    color: Color(0xFF14303B).withOpacity(0.25),
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(6)),
                            child: Icon(
                              Icons.logout_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8, left: 8),
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (watching.length == 0) {
                                  HapticFeedback.mediumImpact();
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WatchListScreen(
                                        watchList: watching,
                                        status: "Watching",
                                      ),
                                    ),
                                  );
                                }
                              },
                              child: WatchListTile(
                                  watching.length.toString(), "Watching"),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (completed.length == 0) {
                                  HapticFeedback.mediumImpact();
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WatchListScreen(
                                        watchList: completed,
                                        status: "Completed",
                                      ),
                                    ),
                                  );
                                }
                              },
                              child: WatchListTile(
                                  completed.length.toString(), "Completed"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  if (onhold.length == 0) {
                                    HapticFeedback.mediumImpact();
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => WatchListScreen(
                                          watchList: onhold,
                                          status: "On Hold",
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: WatchListTile(
                                    onhold.length.toString(), "On Hold")),
                            GestureDetector(
                                onTap: () {
                                  if (dropped.length == 0) {
                                    HapticFeedback.mediumImpact();
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => WatchListScreen(
                                          watchList: dropped,
                                          status: "Dropped",
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: WatchListTile(
                                    dropped.length.toString(), "Dropped")),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

Widget WatchListTile(String count, String title) {
  return Container(
    height: 110,
    width: 160,
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xFF14303B).withOpacity(0.25),
      border: Border.all(color: Color(0xFF14303B).withOpacity(0.5), width: 1),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8, left: 8),
          child: Text(
            count,
            style: TextStyle(
              color: accent_secondary,
              fontSize: 36,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 4, left: 8),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  );
}
