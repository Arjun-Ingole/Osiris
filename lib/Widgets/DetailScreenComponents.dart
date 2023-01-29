import 'package:flutter/material.dart';

Widget TextContainer(String data, EdgeInsets margin, Color color) {
  return Container(
    constraints: const BoxConstraints(minHeight: 36),
    margin: margin,
    decoration: BoxDecoration(
        color: color.withOpacity(0.6),
        border:
            Border.all(width: 0.75, color: Color(0xFFA3A3B0).withOpacity(0.5)),
        borderRadius: BorderRadius.circular(16)),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Text(
        data,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget CircularButtons(IconData icon, {required Function() onTap}) {
  return InkWell(
    onTap: () {
      onTap();
    },
    child: Container(
      width: 36,
      height: 36,
      margin: const EdgeInsets.only(top: 8, right: 8),
      decoration: BoxDecoration(
          color: const Color(0xFF23232B).withOpacity(0.60),
          border: Border.all(width: 0.75, color: const Color(0xFF373741)),
          borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: Icon(icon, color: const Color(0xFF9D9DA5)),
      ),
    ),
  );
}

Widget TitleText(data) {
  return Container(
    margin: const EdgeInsets.all(8),
    child: Text(
      data,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  );
}
