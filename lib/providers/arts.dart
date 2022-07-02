import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:one_glance/providers/scores.dart';
import 'package:provider/provider.dart';
import 'package:firebase_storage/firebase_storage.dart';

import './scores.dart';
import './art.dart';

class Arts with ChangeNotifier {
  final String authToken;
  final String userId;
  List<Art> _items = [];
  List<Art> _digitalItems = [];
  List<Art> _traditionalItems = [];
  List<Art> _scores = [];

  Arts(this.authToken, this.userId, this._items);

  List<Art> get items {
    return [..._items];
  }

  List<Art> get digitalItems {
    return [..._digitalItems];
  }

  List<Art> get traditionalItems {
    return [..._traditionalItems];
  }

  Art findById(String id) {
    return _items.firstWhere((prod) => prod.id == id,
        orElse: () => Art(
            id: '',
            title: '',
            description: '',
            imageURL: '',
            thumbnailURL: '',
            psdURL: '',
            scoreOriginality: 0,
            scoreTheme: 0,
            scoreCharDesign: 0,
            scoreOverallDesign: 0,
            comment: ''));
  }

  List<Art> getDigital() {
    final loadedDigital = <Art>[];
    items.forEach((art) {
      if (art.isDigital == 1) {
        loadedDigital.add(art);
      }
    });
    return loadedDigital;
  }

  List<Art> getTraditional() {
    final loadedTraditional = <Art>[];
    _items.forEach((art) {
      if (art.isTraditional == 1) {
        loadedTraditional.add(art);
      }
    });
    return loadedTraditional;
  }

  Future<void> fetchAndSetProduct(context) async {
    await Provider.of<Scores>(context, listen: false).fetchAndSetOrders();
    var url = Uri.parse(
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/arts.json?auth=$authToken');
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      final List<Art> loadedProducts = [];

      extractedData.forEach(
        (prodId, prodData) async {
          var _score =
              Provider.of<Scores>(context, listen: false).findById(prodId);
          loadedProducts.add(
            Art(
              id: prodId,
              title: prodData['title'],
              description: prodData['description'],
              isDigital: prodData['isDigital'],
              isTraditional: prodData['isTraditional'],
              imageURL: prodData['imageURL'],
              thumbnailURL: prodData['thumbnailURL'],
              psdURL: prodData['psdURL'],
              scoreOriginality: _score.scoreOriginality,
              scoreTheme: _score.scoreTheme,
              scoreCharDesign: _score.scoreCharDesign,
              scoreOverallDesign: _score.scoreOverallDesign,
              comment: prodData['comment'],
              isScored: _score.isScored,
            ),
          );
        },
      );

      _items = loadedProducts;

      _digitalItems = getDigital();
      _traditionalItems = getTraditional();

      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }

  Future<void> addProduct(Art art) async {
    final url = Uri.parse(
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/arts/${art.id}.json?auth=$authToken');
    try {
      final response = await http.put(
        url,
        body: json.encode({
          'id': art.id,
          'title': art.title,
          'description': art.description,
          'isDigital': art.isDigital,
          'isTraditional': art.isTraditional,
          'imageURL': art.imageURL,
          'thumbnailURL': art.thumbnailURL,
          'scoreOriginality': art.scoreOriginality,
          'scoreTheme': art.scoreTheme,
          'scoreCharDesign': art.scoreCharDesign,
          'scoreOverallDesign': art.scoreOverallDesign,
          'comment': art.comment,
          'isScored': art.isScored,
        }),
      );
      final newArt = Art(
        id: art.id,
        title: art.title,
        description: art.description,
        isDigital: art.isDigital,
        isTraditional: art.isTraditional,
        imageURL: art.imageURL,
        thumbnailURL: art.thumbnailURL,
        psdURL: art.psdURL,
        scoreOriginality: art.scoreOriginality,
        scoreTheme: art.scoreTheme,
        scoreCharDesign: art.scoreCharDesign,
        scoreOverallDesign: art.scoreOverallDesign,
        comment: art.comment,
        isScored: art.isScored,
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
          'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/arts/$id.json?auth=$authToken');
      http.patch(url,
          body: json.encode({
            'id': newArt.id,
            'title': newArt.title,
            'description': newArt.description,
            'isDigital': newArt.isDigital,
            'isTraditional': newArt.isTraditional,
            'imageURL': newArt.imageURL,
            'thumbnailURL': newArt.thumbnailURL,
            'scoreOriginality': newArt.scoreOriginality,
            'scoreTheme': newArt.scoreTheme,
            'scoreCharDesign': newArt.scoreCharDesign,
            'scoreOverallDesign': newArt.scoreOverallDesign,
            'comment': newArt.comment,
            'isScored': newArt.isScored,
          }));
      _items[prodIndex] = newArt;
      notifyListeners();
    } else {
      print('...');
    }
  }

  void updateThumbnail(context) async {
    items.forEach((prodData) async {
      var _newThumbnail = await Provider.of<Art>(context, listen: false)
          .getThumbnail(prodData.id);
      var _newArt = Art(
        id: prodData.id,
        title: prodData.title,
        description: prodData.description,
        imageURL: prodData.imageURL,
        thumbnailURL: _newThumbnail,
        psdURL: prodData.psdURL,
        scoreOriginality: prodData.scoreOriginality,
        scoreTheme: prodData.scoreTheme,
        scoreCharDesign: prodData.scoreCharDesign,
        scoreOverallDesign: prodData.scoreOverallDesign,
        comment: prodData.comment,
      );
      updateProduct(prodData.id, _newArt);
      print('${prodData.id} updated');
    });
  }
}
