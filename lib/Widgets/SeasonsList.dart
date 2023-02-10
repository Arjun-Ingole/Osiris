import 'package:flutter/material.dart';
import 'package:osiris/Services/API.dart';

class SeasonsList extends StatefulWidget {
  SeasonsList(this.seasonNumber, this.movieId, {super.key});
  int seasonNumber;
  String movieId;

  @override
  State<SeasonsList> createState() => _SeasonsListState();
}

class _SeasonsListState extends State<SeasonsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: FutureBuilder(
          future: APIService()
              .getEpisodes(widget.movieId, widget.seasonNumber.toString()),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics()),
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  var url = snapshot.data[index].stillPath.toString();
                  return Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF14303B).withOpacity(0.25),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFA3A3B0).withOpacity(0.5),
                        width: 0.75,
                      ),
                    ),
                    child: Column(children: [
                      Container(
                        height: 100,
                        width: 220,
                        alignment: Alignment.bottomRight,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          image: DecorationImage(
                              image: url == "null"
                                  ? const AssetImage("assets/LoadingImage.png")
                                      as ImageProvider
                                  : NetworkImage(
                                      "https://image.tmdb.org/t/p/w500$url"),
                              fit: BoxFit.cover),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            snapshot.data[index].episodeNumber.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    color: Colors.black,
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8, top: 4),
                        width: 200,
                        child: Text(snapshot.data[index].name.toString(),
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ]),
                  );
                },
              );
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}
