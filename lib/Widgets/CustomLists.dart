import 'package:flutter/material.dart';
import 'package:osiris/Models/PopularMovies.dart';
import 'package:osiris/Models/TvShow.dart';
import 'package:osiris/Widgets/MovieCard.dart';

class CustomListMovie extends StatelessWidget {
  CustomListMovie(this.future, {super.key});
  Future<List<Results>> future;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: FutureBuilder(
        future: future,
        builder: ((context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: ((context, index) {
                var url = snapshot.data![index].posterPath.toString();
                return MovieCard(snapshot.data![index].title.toString(),
                    NetworkImage("https://image.tmdb.org/t/p/w500$url"));
              }),
            );
          } else {
            return ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: ((context, index) {
                return MovieCard(
                    "Loading", const AssetImage("assets/LoadingImage.png"));
              }),
            );
          }
        }),
      ),
    );
  }
}

class CustomListTV extends StatelessWidget {
  CustomListTV(this.future, {super.key});
  Future<List<TvShow>> future;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: FutureBuilder(
        future: future,
        builder: ((context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: ((context, index) {
                var url = snapshot.data![index].posterPath.toString();
                return MovieCard(snapshot.data![index].name.toString(),
                    NetworkImage("https://image.tmdb.org/t/p/w500$url"));
              }),
            );
          } else {
            return ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: ((context, index) {
                return MovieCard(
                    "Loading", const AssetImage("assets/LoadingImage.png"));
              }),
            );
          }
        }),
      ),
    );
  }
}
