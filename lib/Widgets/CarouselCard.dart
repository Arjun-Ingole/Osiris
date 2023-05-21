import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:osiris/Models/TvShow.dart';
import 'package:osiris/Widgets/LandingCard.dart';

class CustomCarouselSlider extends StatelessWidget {
  CustomCarouselSlider(this.data, {super.key});
  List<TvShow> data;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: (size.height * 0.33 < 300) ? 300 : size.height * 0.33,
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          pageSnapping: true,
          itemCount: 20,
          itemBuilder: ((context, index) {
            var url = data[index].backdropPath.toString();
            return GestureDetector(
              onTap: () {
                HapticFeedback.mediumImpact();
                GoRouter.of(context).push('/tv/${data[index].id}');
              },
              child: LandingCard(
                  CachedNetworkImageProvider(
                      "https://image.tmdb.org/t/p/original$url"),
                  data[index].name.toString()),
            );
          }),
        ));
  }
}
