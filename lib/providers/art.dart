import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Art with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  int isDigital;
  int isTraditional;
  String imageURL;
  String thumbnailURL;
  String psdURL;
  final int scoreOriginality;
  final int scoreTheme;
  final int scoreCharDesign;
  final int scoreOverallDesign;
  final String comment;
  int isScored;

  Art({
    required this.id,
    required this.title,
    required this.description,
    this.isDigital = 0,
    this.isTraditional = 0,
    required this.imageURL,
    required this.thumbnailURL,
    required this.psdURL,
    required this.scoreOriginality,
    required this.scoreTheme,
    required this.scoreCharDesign,
    required this.scoreOverallDesign,
    required this.comment,
    this.isScored = 0,
  });

  Future<String> getImage(String id) async {
    final storageRef =
        FirebaseStorage.instance.refFromURL('gs://one-glance.appspot.com');
    final imageURL = await storageRef.child('/Art/$id.png').getDownloadURL();
    notifyListeners();
    return imageURL;
  }

  Future<String> getThumbnail(String id) async {
    final storageRef =
        FirebaseStorage.instance.refFromURL('gs://one-glance.appspot.com');
    final thumbnailURL = await storageRef.child('/Thumbnail/$id.jpg').getDownloadURL();
    return thumbnailURL;
  }
}
