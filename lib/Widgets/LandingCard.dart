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
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    // 85% Transperancy
                    Color(0xD9111015),
                    Color(0xFF111015),
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

// Container(
//       width: size.width,
//       height: size.height * 0.33,
//       margin: EdgeInsets.fromLTRB(8, 0, 8, 4),
//       decoration: BoxDecoration(
//         image: DecorationImage(fit: BoxFit.cover, image: image),
//       ),
//     );