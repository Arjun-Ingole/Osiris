import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:osiris/Services/auth.dart';
import 'package:unicons/unicons.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> LaunchUrl(String url) async {
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

void pshowDialog(BuildContext context, String Id, String mediaType) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Color(0xFF12121C).withOpacity(0.95),
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Select Watchlist",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: Colors.white.withOpacity(0.5),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  FireBaseServices().addWatching(Id, "Watching", mediaType);
                  Navigator.pop(context);
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.play_circle_rounded,
                      color: Color(0xFF16F66A),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Watching",
                      style: TextStyle(
                        color: Color(0xFF16F66A),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  FireBaseServices().addWatching(Id, "Completed", mediaType);
                  Navigator.pop(context);
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: Color(0xFF36A5D0),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Completed",
                      style: TextStyle(
                        color: Color(0xFF36A5D0),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  FireBaseServices().addWatching(Id, "On-Hold", mediaType);
                  Navigator.pop(context);
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.pause_rounded,
                      color: Color(0xFFDAC22E),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("On Hold", style: TextStyle(color: Color(0xFFDAC22E)))
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  FireBaseServices().addWatching(Id, "Dropped", mediaType);
                  Navigator.pop(context);
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.delete_rounded,
                      color: Color(0xFFE52E5C),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Dropped", style: TextStyle(color: Color(0xFFE52E5C)))
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
