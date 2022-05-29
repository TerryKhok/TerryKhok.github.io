import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './art.dart';

class Arts with ChangeNotifier {
  List<Art> _items = [
    // Art(
    //     id: '01',
    //     title: 'Furo Trip',
    //     description: 'Terry S3S3',
    //     imageURL:
    //         'https://cdn.discordapp.com/attachments/932575063302090802/973778077966565426/unknown.png',
    //     scoreOriginality: 0,
    //     scoreTheme: 0,
    //     scoreTechnique: 0,
    //     scoreCharDesign: 0,
    //     scoreOverallDesign: 0,
    //     comment: ''),
    // Art(
    //     id: '02',
    //     title: 'Furo\'s Trip',
    //     description: 'Furo S3S3',
    //     imageURL:
    //         'https://cdn.discordapp.com/attachments/932575063302090802/973781261686566912/unknown.png',
    //     scoreOriginality: 0,
    //     scoreTheme: 0,
    //     scoreTechnique: 0,
    //     scoreCharDesign: 0,
    //     scoreOverallDesign: 0,
    //     comment: ''),
  ];

  List<Art> get items {
    return [..._items];
  }

  Art findById(String id) {
    return _items.firstWhere((prod) => prod.id == id,
        orElse: () => Art(
            id: '',
            title: '',
            description: '',
            imageURL: '',
            scoreOriginality: 0,
            scoreTheme: 0,
            scoreTechnique: 0,
            scoreCharDesign: 0,
            scoreOverallDesign: 0,
            comment: ''));
  }

  Future<void> fetchAndSetProduct([bool filterByUser = false]) async {
    // final filterString = filterByUser ? 'orderBy="creatorId"&equalTo="$userId"' : '';
    var url = Uri.parse(
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/arts.json');
    try {
      print('trying to load');
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      // url = Uri.parse(
      //     'https://flutter-course-2ea42-default-rtdb.asia-southeast1.firebasedatabase.app/userFavorite/$userId.json?auth=$authToken');
      // final favoriteResponse = await http.get(url);
      // final favoriteData = jsonDecode(favoriteResponse.body);
      final List<Art> loadedProducts = [];
      extractedData.forEach((prodId, prodData) {
        loadedProducts.add(Art(
          id: prodId,
          title: prodData['title'],
          description: prodData['description'],
          isDigital: prodData['isDigital'] == null
              ? false
              : prodData['isDigital'] ?? false,
          isTraditional: prodData['isTraditional'] == null
              ? false
              : prodData['isTraditional'] ?? false,
          imageURL: prodData['imageURL'],
          scoreOriginality: prodData['scoreOriginality'],
          scoreTheme: prodData['scoreTheme'],
          scoreTechnique: prodData['scoreTechnique'],
          scoreCharDesign: prodData['scoreCharDesign'],
          scoreOverallDesign: prodData['scoreOverallDesign'],
          comment: prodData['comment'],
          isScored: prodData['isScored'] == null
              ? false
              : prodData['isScored'] ?? false,
        ));
      });
      _items = loadedProducts;
      print('items loaded');
      print(extractedData);
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }

  Future<void> addProduct(Art art) async {
    final url = Uri.parse(
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/arts.json');
    try {
      final response = await http.post(
        url,
        body: json.encode({
          'id': art.id,
          'title': art.title,
          'description': art.description,
          'imageURL': art.imageURL,
          'scoreOriginality': art.scoreOriginality,
          'scoreTheme': art.scoreTheme,
          'scoreTechnique': art.scoreTechnique,
          'scoreCharDesign': art.scoreCharDesign,
          'scoreOverallDesign': art.scoreOverallDesign,
          'comment': art.comment,
        }),
      );
      final newArt = Art(
        id: art.id,
        title: art.title,
        description: art.description,
        imageURL: art.imageURL,
        scoreOriginality: art.scoreOriginality,
        scoreTheme: art.scoreTheme,
        scoreTechnique: art.scoreTechnique,
        scoreCharDesign: art.scoreCharDesign,
        scoreOverallDesign: art.scoreOverallDesign,
        comment: art.comment,
      );
      _items.add(newArt);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Future<void> updateProduct(String id, Art newArt) async {
    final prodIndex = _items.indexWhere((prod) => prod.id == id);
    if (prodIndex >= 0) {
      final url = Uri.parse(
          'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/arts/$id.json');
      http.patch(url,
          body: json.encode({
            'id': newArt.id,
            'title': newArt.title,
            'description': newArt.description,
            'imageURL': newArt.imageURL,
            'scoreOriginality': newArt.scoreOriginality,
            'scoreTheme': newArt.scoreTheme,
            'scoreTechnique': newArt.scoreTechnique,
            'scoreCharDesign': newArt.scoreCharDesign,
            'scoreOverallDesign': newArt.scoreOverallDesign,
            'comment': newArt.comment,
          }));
      _items[prodIndex] = newArt;
      notifyListeners();
    } else {
      print('...');
    }
  }
}
