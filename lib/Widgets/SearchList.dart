import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:osiris/Models/SearchResult.dart';
import 'package:osiris/Widgets/MovieCard.dart';

class SearchList extends StatefulWidget {
  SearchList(this.future, {super.key});

  Future<List<SearchResult>> future;

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return FutureBuilder(
      future: widget.future,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return Container(
            height: size.height * 0.8,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemCount: snapshot.data!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var url = snapshot.data![index].backdropPath;
                return MovieCard(
                  snapshot.data![index].title.toString(),
                  url == null
                      ? const AssetImage("assets/LoadingImage.png")
                      : CachedNetworkImageProvider(
                              "https://image.tmdb.org/t/p/original$url")
                          as ImageProvider,
                );
              },
            ),
          );
        } else {
          return MovieCard(
              "Loading", const AssetImage("assets/LoadingImage.png"));
        }
      },
    );
  }
}
