import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:osiris/Models/PopularMovies.dart';
import 'package:osiris/Models/TvShow.dart';
import 'package:osiris/Services/API.dart';
import 'package:osiris/Services/consts.dart';
import 'package:osiris/Widgets/BottomNavBar.dart';
import 'package:osiris/Widgets/CarouselCard.dart';
import 'package:osiris/Widgets/CustomLists.dart';
import 'package:osiris/Widgets/LoadingScreen.dart';
import 'package:osiris/Widgets/SectionText.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollController _scrollController = ScrollController();
  bool isVisible = true;

  late List<Results> popularMovie;
  late List<Results> topRatedMovie;
  late List<Results> nowPLayingMovie;
  late List<TvShow> popularShows;
  late List<TvShow> topRatedShows;
  bool isLoading = true;

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

  Future<void> fetchData() async {
    topRatedShows = await APIService().getTopRatedShow();
    popularMovie = await APIService().getPopularMovie();
    topRatedMovie = await APIService().getTopRatedMovie();
    popularShows = await APIService().getRecommendedTvShows("1396");
    nowPLayingMovie = await APIService().getNowPLayingMovie();
    setState(() {
      isLoading = false;
    });
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: AnimatedBuilder(
          animation: _scrollController,
          builder: ((context, child) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              curve: Curves.fastLinearToSlowEaseIn,
              height: isVisible ? 75 : 0,
              child: BottomNavBar(
                currentIndex: 0,
              ),
            );
          })),
      extendBody: true,
      body: isLoading
          ? LoadingScreen()
          : Container(
              height: size.height,
              width: size.width,
              color: background_primary,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                controller: _scrollController,
                shrinkWrap: true,
                children: [
                  CustomCarouselSlider(topRatedShows),
                  SectionText("Popular", "Movies"),
                  CustomListMovie(popularMovie),
                  SectionText("TOP Rated", "Movies"),
                  CustomListMovie(topRatedMovie),
                  SectionText("Popular", "Shows"),
                  CustomListTV(popularShows),
                  SectionText("NoW PLAying", "Movies"),
                  CustomListMovie(nowPLayingMovie),
                ],
              ),
            ),
    );
  }
}
