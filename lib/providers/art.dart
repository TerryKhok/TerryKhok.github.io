import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Art with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  bool isDigital;
  bool isTraditional;
  String imageURL;
  final int scoreOriginality;
  final int scoreTheme;
  final int scoreTechnique;
  final int scoreCharDesign;
  final int scoreOverallDesign;
  final String comment;
  bool isScored;

  Art({
    required this.id,
    required this.title,
    required this.description,
    this.isDigital = false,
    this.isTraditional = false,
    required this.imageURL,
    required this.scoreOriginality,
    required this.scoreTheme,
    required this.scoreTechnique,
    required this.scoreCharDesign,
    required this.scoreOverallDesign,
    required this.comment,
    this.isScored = false,
  });

  void _setScoredValue(bool newValue) {
    isScored = newValue;
    notifyListeners();
  }

  Future<void> toggleFavoriteStatus(String token, String userId) async {
    final oldStatus = isScored;
    isScored = !isScored;
    notifyListeners();
    final url = Uri.parse(
        'https://flutter-course-2ea42-default-rtdb.asia-southeast1.firebasedatabase.app/userFavorite/$userId/$id.json?auth=$token');
    // try {
    //   final response = await http.put(
    //     url,
    //     body: json.encode(
    //       isScored,
    //     ),
    //   );
    //   if (response.statusCode >= 400) {
    //     isScored(oldStatus);
    //   }
    // } catch (error) {
    //   isScored(oldStatus);
    // }
  }

  Future<String> getImage(String id) async {
    final storageRef =
        FirebaseStorage.instance.refFromURL('gs://one-glance.appspot.com');
    final imageURL = await storageRef.child('/Art/$id.png').getDownloadURL();
    notifyListeners();
    return imageURL;
  }
}
