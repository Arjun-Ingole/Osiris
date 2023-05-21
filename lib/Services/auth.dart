import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future<bool> doesUserExist() async {
    final snapshot = await FirebaseFirestore.instance
        .collection('Data')
        .where("Email", isEqualTo: FirebaseAuth.instance.currentUser!.email)
        .get();
    return snapshot.docs.isNotEmpty;
  }

  Future<void> startCollection() async {
    bool condition = await doesUserExist();
    if (condition == false) {
      FirebaseFirestore.instance
          .collection("Data")
          .doc(
            FirebaseAuth.instance.currentUser!.uid,
          )
          .set({
        "Email": FirebaseAuth.instance.currentUser!.email,
        "WatchList": [],
      });
    }
  }

  Future googleLogin() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential).then((value) {
      startCollection();
    });
    notifyListeners();
  }

  Future logout() async {
    await googleSignIn.signOut();
    FirebaseAuth.instance.signOut();
  }
}

class FireBaseServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addWatching(String id, String status, String mediaType) async {
    List watchlist = await _firestore
        .collection("Data")
        .doc(_auth.currentUser!.uid)
        .get()
        .then((value) => value.data()!["WatchList"]);
    for (var i = 0; i < watchlist.length; i++) {
      if (watchlist[i]["Id"] == id) {
        await _firestore
            .collection("Data")
            .doc(_auth.currentUser!.uid)
            .update({
              "WatchList": FieldValue.arrayRemove([
                {
                  "Id": id,
                  "status": watchlist[i]["status"],
                  "mediaType": watchlist[i]["mediaType"],
                }
              ])
            })
            .then((value) {})
            .catchError((error) {});
      }
    }
    await _firestore
        .collection("Data")
        .doc(_auth.currentUser!.uid)
        .update({
          "WatchList": FieldValue.arrayUnion([
            {
              "Id": id,
              "status": status,
              "mediaType": mediaType,
            }
          ])
        })
        .then((value) => {})
        .catchError((error) {});
  }

  Future<List> getWatchList() async {
    List watchlist = await _firestore
        .collection("Data")
        .doc(_auth.currentUser!.uid)
        .get()
        .then((value) => value.data()!["WatchList"]);
    return watchlist;
  }
}
