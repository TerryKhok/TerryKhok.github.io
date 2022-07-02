import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import './art.dart';
import './arts.dart';

class ScoreItem {
  final String id;
  int isDigital;
  int isTraditional;
  final int scoreOriginality;
  final int scoreTheme;
  final int scoreCharDesign;
  final int scoreOverallDesign;
  int isScored;

  ScoreItem({
    required this.id,
    this.isDigital = 0,
    this.isTraditional = 0,
    required this.scoreOriginality,
    required this.scoreTheme,
    required this.scoreCharDesign,
    required this.scoreOverallDesign,
    this.isScored = 0,
  });
}

class Scores with ChangeNotifier {
  List<ScoreItem> _scores = [];
  final String authToken;
  final String userId;
  

  Scores(this.authToken, this.userId, this._scores,);

  List<ScoreItem> get scores {
    return [..._scores];
  }

  ScoreItem findById(String id) {
    return _scores.firstWhere((prod) => prod.id == id,
        orElse: () => ScoreItem(
              id: '',
              scoreOriginality: 0,
              scoreTheme: 0,
              scoreCharDesign: 0,
              scoreOverallDesign: 0,
              isScored: 0,
            ));
  }

  Future<void> fetchAndSetOrders() async {
    final url = Uri.parse(
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/$userId.json?auth=$authToken');
    final response = await http.get(url);
    final List<ScoreItem> loadedScores = [];
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    if (extractedData == null) {
      return;
    }
    extractedData.forEach((scoreId, scoreData) {
      loadedScores.add(
        ScoreItem(
          id: scoreId,
          isDigital: scoreData['isDigital'],
          isTraditional: scoreData['isTraditional'],
          scoreOriginality: scoreData['scoreOriginality'] as int,
          scoreTheme: scoreData['scoreTheme'] as int,
          scoreCharDesign: scoreData['scoreCharDesign'] as int,
          scoreOverallDesign: scoreData['scoreOverallDesign'] as int,
          isScored: scoreData['isScored'] as int,
        ),
      );
    });
    _scores = loadedScores;
    notifyListeners();
  }

  Future<void> addScore(ScoreItem score) async {
    final url = Uri.parse(
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/$userId/${score.id}.json?auth=$authToken');
    try {
      final response = await http.put(
        url,
        body: json.encode({
          'id': score.id,
          'isDigital': score.isDigital,
          'isTraditional': score.isTraditional,
          'scoreOriginality': score.scoreOriginality,
          'scoreTheme': score.scoreTheme,
          'scoreCharDesign': score.scoreCharDesign,
          'scoreOverallDesign': score.scoreOverallDesign,
          'isScored': score.isScored,
        }),
      );
      final newScore = ScoreItem(
        id: score.id,
        isDigital: score.isDigital,
        isTraditional: score.isTraditional,
        scoreOriginality: score.scoreOriginality,
        scoreTheme: score.scoreTheme,
        scoreCharDesign: score.scoreCharDesign,
        scoreOverallDesign: score.scoreOverallDesign,
        isScored: score.isScored,
      );
      _scores.add(newScore);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Future<void> updateScore(String id, ScoreItem newScore) async {
    final prodIndex = _scores.indexWhere((prod) => prod.id == id);
    if (prodIndex >= 0) {
      final url = Uri.parse(
          'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/$userId/$id.json?auth=$authToken');
      http.patch(url,
          body: json.encode({
            'id': newScore.id,
            'isDigital': newScore.isDigital,
            'isTraditional': newScore.isTraditional,
            'scoreOriginality': newScore.scoreOriginality,
            'scoreTheme': newScore.scoreTheme,
            'scoreCharDesign': newScore.scoreCharDesign,
            'scoreOverallDesign': newScore.scoreOverallDesign,
            'isScored': newScore.isScored,
          }));
      _scores[prodIndex] = newScore;
      notifyListeners();
      
    } else {
      print('...');
    }
  }
}
