import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:osiris/Services/API.dart';
import 'package:osiris/Services/consts.dart';

class WatchListScreen extends StatefulWidget {
  WatchListScreen({required this.watchList, required this.status, super.key});
  List watchList;
  String status;

  @override
  State<WatchListScreen> createState() => _WatchListScreenState();
}

class _WatchListScreenState extends State<WatchListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.status),
        backgroundColor: background_primary,
        elevation: 0,
      ),
      backgroundColor: background_primary,
      body: Container(
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: widget.watchList.length,
            itemBuilder: (BuildContext context, int index) {
              return FutureBuilder(
                future: WatchListItem(widget.watchList[index]["Id"],
                    widget.watchList[index]["mediaType"], context),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return snapshot.data as Widget;
                  } else {
                    return Container();
                  }
                },
              );
            }),
      ),
    );
  }
}

Future<Widget> WatchListItem(String id, String mediaType, context) async {
  var details;
  if (mediaType == "movie") {
    details = await APIService().getMovieDetail(id);
    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        GoRouter.of(context).push('/movie/$id');
      },
      child: Container(
        child: Row(
          children: [
            Container(
              height: 150,
              width: 100,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://image.tmdb.org/t/p/w500${details.posterPath}'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(details.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left),
                Text("Release Date: ${details.releaseDate}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left),
                Text(
                    "Rating: ${details.voteAverage.toString().substring(0, 3)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left),
                const Text("Type: Movie",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left),
              ],
            ),
          ],
        ),
      ),
    );
  } else {
    details = await APIService().getTvShowDetail(id);
    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        GoRouter.of(context).push('/tv/$id');
      },
      child: Container(
        child: Row(
          children: [
            Container(
              height: 150,
              width: 100,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://image.tmdb.org/t/p/w500${details.posterPath}'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(details.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left),
                Text("First Air Date: ${details.firstAirDate}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left),
                Text(
                    "Rating: ${details.voteAverage.toString().substring(0, 3)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left),
                const Text("Type: TV Show",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
