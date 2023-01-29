import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class MovieCard extends StatelessWidget {
  MovieCard(this.title, this.image, this.Id, this.mediaType, {super.key});
  String title;
  ImageProvider image;
  String Id;
  String mediaType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        GoRouter.of(context).push('/$mediaType/$Id');
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 100,
            margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image: image),
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
      ),
    );
  }
}
