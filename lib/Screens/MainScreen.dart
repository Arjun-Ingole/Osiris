import 'package:flutter/material.dart';
import 'package:osiris/Services/consts.dart';
import 'package:osiris/Services/API.dart';
import 'package:osiris/Widgets/BottomNavBar.dart';
import 'package:osiris/Widgets/CarouselCard.dart';
import 'package:osiris/Widgets/CustomLists.dart';
import 'package:osiris/Widgets/SectionText.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData().then((_) {
      setState(() {
        isLoading = false;
      });
    });
  }

  Future<void> fetchData() async {
    APIService().getTopRatedShow();
    APIService().getPopularMovie();
    APIService().getTopRatedMovie();
    APIService().getPopularShow();
    APIService().getNowPLayingMovie();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(currentIndex: 0),
      extendBody: true,
      body: Container(
        height: size.height,
        width: size.width,
        color: background_primary,
        child: ListView(
          cacheExtent: 9999,
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            CustomCarouselSlider(APIService().getTopRatedShow()),
            SectionText("Popular", "Movies"),
            CustomListMovie(APIService().getPopularMovie()),
            SectionText("TOP Rated", "Movies"),
            CustomListMovie(APIService().getTopRatedMovie()),
            SectionText("Popular", "Shows"),
            CustomListTV(APIService().getPopularShow()),
            SectionText("NoW PLAying", "Movies"),
            CustomListMovie(APIService().getNowPLayingMovie()),
          ],
        ),
      ),
    );
  }
}
