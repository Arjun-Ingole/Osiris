import 'package:flutter/material.dart';

Widget MovieCard(String title, String url) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 150,
        width: 100,
        margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://image.tmdb.org/t/p/w500$url")),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      Container(
        width: 100,
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      )
    ],
  );
}
