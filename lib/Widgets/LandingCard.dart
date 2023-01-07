import 'package:flutter/material.dart';
import 'package:osiris/Services/consts.dart';

class LandingCard extends StatelessWidget {
  LandingCard(this.image, this.name, {super.key});
  ImageProvider image;
  String name;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.33,
      width: size.width,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.33,
            decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover, image: image)),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    background_primary.withOpacity(0.50),
                    background_primary.withOpacity(0.75),
                    background_primary.withOpacity(1.00),
                  ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [
                    background_primary.withOpacity(0.80),
                    background_primary.withOpacity(0.60),
                    background_primary.withOpacity(0.40),
                    Colors.transparent
                  ]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.28),
            width: size.width,
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
