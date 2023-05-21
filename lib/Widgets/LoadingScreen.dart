import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:osiris/Services/consts.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: background_primary,
      child: Center(
        child: Lottie.asset(
          "assets/LoadingDuck.json",
          width: size.width * 0.5,
          frameRate: FrameRate(60),
        ),
      ),
    );
  }
}
