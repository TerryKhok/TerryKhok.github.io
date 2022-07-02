// @dart=2.9
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/art.dart';
import '../providers/arts.dart';
import '../providers/scores.dart';
import '../pages/art_detail_page.dart';
import '../pages/digital_page.dart';
import '../pages/traditional_page.dart';
import './art_item.dart';

class ScoringItem extends StatefulWidget {
  final id;

  ScoringItem({Key key, @required this.id}) : super(key: key);

  @override
  State<ScoringItem> createState() => _ScoringItemState();
}

class _ScoringItemState extends State<ScoringItem> {
  Timer _timer;
  bool a1State = false;
  bool a2State = false;
  bool a3State = false;
  bool a4State = false;
  bool a5State = false;
  bool a6State = false;
  bool a7State = false;
  bool a8State = false;
  bool a9State = false;
  bool a10State = false;

  bool b1State = false;
  bool b2State = false;
  bool b3State = false;
  bool b4State = false;
  bool b5State = false;
  bool b6State = false;
  bool b7State = false;
  bool b8State = false;
  bool b9State = false;
  bool b10State = false;

  bool d1State = false;
  bool d2State = false;
  bool d3State = false;
  bool d4State = false;
  bool d5State = false;
  bool d6State = false;
  bool d7State = false;
  bool d8State = false;
  bool d9State = false;
  bool d10State = false;

  bool e1State = false;
  bool e2State = false;
  bool e3State = false;
  bool e4State = false;
  bool e5State = false;
  bool e6State = false;
  bool e7State = false;
  bool e8State = false;
  bool e9State = false;
  bool e10State = false;

  var _scoreOriginality = 0;
  var _scoreTheme = 0;
  var _scoreCharacterDesign = 0;
  var _scoreOverallDesign = 0;

  var _editedProduct = Art(
    id: '',
    title: '',
    description: '',
    isDigital: 0,
    isTraditional: 0,
    imageURL: '',
    thumbnailURL: '',
    scoreOriginality: 0,
    scoreTheme: 0,
    scoreCharDesign: 0,
    scoreOverallDesign: 0,
    comment: '',
    isScored: 0,
  );

  var _digitalItems = [];
  var _traditionalItems = [];
  var _currentIndex;

  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      if (widget.id != null) {
        Provider.of<Arts>(context, listen: false).fetchAndSetProduct(context);
        _editedProduct =
            Provider.of<Arts>(context, listen: false).findById(widget.id);
        _digitalItems = Provider.of<Arts>(context, listen: false).getDigital();
        _traditionalItems =
            Provider.of<Arts>(context, listen: false).getTraditional();
        if (_editedProduct.isDigital == 1) {
          _currentIndex = _digitalItems.indexOf(_editedProduct);
        } else if (_editedProduct.isTraditional == 1) {
          _currentIndex = _traditionalItems.indexOf(_editedProduct);
        }
        if (_editedProduct.scoreOriginality == 0 &&
            _editedProduct.scoreTheme == 0 &&
            _editedProduct.scoreCharDesign == 0 &&
            _editedProduct.scoreOverallDesign == 0) {
          return;
        } else {
          _scoreOriginality = _editedProduct.scoreOriginality;
          _scoreTheme = _editedProduct.scoreTheme;
          _scoreCharacterDesign = _editedProduct.scoreCharDesign;
          _scoreOverallDesign = _editedProduct.scoreOverallDesign;

          _editedProduct.scoreOriginality == 1
              ? a1State = true
              : _editedProduct.scoreOriginality == 2
                  ? a2State = true
                  : _editedProduct.scoreOriginality == 3
                      ? a3State = true
                      : _editedProduct.scoreOriginality == 4
                          ? a4State = true
                          : _editedProduct.scoreOriginality == 5
                              ? a5State = true
                              : _editedProduct.scoreOriginality == 6
                                  ? a6State = true
                                  : _editedProduct.scoreOriginality == 7
                                      ? a7State = true
                                      : _editedProduct.scoreOriginality == 8
                                          ? a8State = true
                                          : _editedProduct.scoreOriginality == 9
                                              ? a9State = true
                                              : _editedProduct
                                                          .scoreOriginality ==
                                                      10
                                                  ? a10State = true
                                                  : null;

          _editedProduct.scoreTheme == 1
              ? b1State = true
              : _editedProduct.scoreTheme == 2
                  ? b2State = true
                  : _editedProduct.scoreTheme == 3
                      ? b3State = true
                      : _editedProduct.scoreTheme == 4
                          ? b4State = true
                          : _editedProduct.scoreTheme == 5
                              ? b5State = true
                              : _editedProduct.scoreTheme == 6
                                  ? b6State = true
                                  : _editedProduct.scoreTheme == 7
                                      ? b7State = true
                                      : _editedProduct.scoreTheme == 8
                                          ? b8State = true
                                          : _editedProduct.scoreTheme == 9
                                              ? b9State = true
                                              : _editedProduct.scoreTheme == 10
                                                  ? b10State = true
                                                  : null;

          _editedProduct.scoreCharDesign == 1
              ? d1State = true
              : _editedProduct.scoreCharDesign == 2
                  ? d2State = true
                  : _editedProduct.scoreCharDesign == 3
                      ? d3State = true
                      : _editedProduct.scoreCharDesign == 4
                          ? d4State = true
                          : _editedProduct.scoreCharDesign == 5
                              ? d5State = true
                              : _editedProduct.scoreCharDesign == 6
                                  ? d6State = true
                                  : _editedProduct.scoreCharDesign == 7
                                      ? d7State = true
                                      : _editedProduct.scoreCharDesign == 8
                                          ? d8State = true
                                          : _editedProduct.scoreCharDesign == 9
                                              ? d9State = true
                                              : _editedProduct
                                                          .scoreCharDesign ==
                                                      10
                                                  ? d10State = true
                                                  : null;

          _editedProduct.scoreOverallDesign == 1
              ? e1State = true
              : _editedProduct.scoreOverallDesign == 2
                  ? e2State = true
                  : _editedProduct.scoreOverallDesign == 3
                      ? e3State = true
                      : _editedProduct.scoreOverallDesign == 4
                          ? e4State = true
                          : _editedProduct.scoreOverallDesign == 5
                              ? e5State = true
                              : _editedProduct.scoreOverallDesign == 6
                                  ? e6State = true
                                  : _editedProduct.scoreOverallDesign == 7
                                      ? e7State = true
                                      : _editedProduct.scoreOverallDesign == 8
                                          ? e8State = true
                                          : _editedProduct.scoreOverallDesign ==
                                                  9
                                              ? e9State = true
                                              : _editedProduct
                                                          .scoreOverallDesign ==
                                                      10
                                                  ? e10State = true
                                                  : null;
        }
      }
    }

    print(_editedProduct.isDigital);
    print(_editedProduct.isTraditional);
    print(_editedProduct.scoreOriginality);
    print(_editedProduct.scoreTheme);
    print(_editedProduct.scoreCharDesign);
    print(_editedProduct.scoreOverallDesign);
    setState(() {
      _isInit = false;
    });
    super.didChangeDependencies();
  }

  var _newScore = ScoreItem(
    id: '',
    isDigital: 0,
    isTraditional: 0,
    scoreOriginality: 0,
    scoreTheme: 0,
    scoreCharDesign: 0,
    scoreOverallDesign: 0,
    isScored: 0,
  );

  Future<void> _saveScore() async {
    Timer _timer;
    final _loadedItem =
        Provider.of<Scores>(context, listen: false).findById(_editedProduct.id);
    _newScore = ScoreItem(
      id: _editedProduct.id,
      isDigital: _editedProduct.isDigital,
      isTraditional: _editedProduct.isTraditional,
      scoreOriginality: _scoreOriginality,
      scoreTheme: _scoreTheme,
      scoreCharDesign: _scoreCharacterDesign,
      scoreOverallDesign: _scoreOverallDesign,
      isScored: 1,
    );

    setState(() {
      _isLoading = true;
    });
    if (_scoreOriginality == 0 &&
        _scoreTheme == 0 &&
        _scoreCharacterDesign == 0 &&
        _scoreOverallDesign == 0) {
      return;
    } else if (_loadedItem.id != '') {
      await Provider.of<Scores>(context, listen: false)
          .updateScore(_newScore.id, _newScore);
    } else {
      try {
        await Provider.of<Scores>(context, listen: false).addScore(_newScore);
      } catch (error) {
        await showDialog<Null>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('An error occured!'),
            content: const Text('Something went wrong.'),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: const Text('Okay'))
            ],
          ),
        );
      } finally {}

      setState(() {
        _isLoading = false;
        Provider.of<Scores>(context, listen: false).fetchAndSetOrders();
        Provider.of<Arts>(context, listen: false).fetchAndSetProduct(context);
      });
    }
  }

  _prevArt() {
    if (_editedProduct.isDigital == 1) {
      if (_currentIndex <= 0) return;
      var _nextItem = _digitalItems[_currentIndex - 1];
      Navigator.of(context).pushNamed(
        ArtDetailPage.routeName,
        arguments: _nextItem.id,
      );
    } else if (_editedProduct.isTraditional == 1) {
      if (_currentIndex <= 0) return;
      var _nextItem = _traditionalItems[_currentIndex - 1];
      Navigator.of(context).pushNamed(
        ArtDetailPage.routeName,
        arguments: _nextItem.id,
      );
    }
  }

  _nextArt() {
    if (_editedProduct.isDigital == 1) {
      if (_currentIndex >= _digitalItems.length) return;
      var _nextItem = _digitalItems[_currentIndex + 1];

      Navigator.of(context).pushNamed(
        ArtDetailPage.routeName,
        arguments: _nextItem.id,
      );
    } else if (_editedProduct.isTraditional == 1) {
      if (_currentIndex >= _traditionalItems.length) return;
      var _nextItem = _traditionalItems[_currentIndex + 1];

      Navigator.of(context).pushNamed(
        ArtDetailPage.routeName,
        arguments: _nextItem.id,
      );
    }
  }

  showPopUp() {
    showDialog(
        context: context,
        builder: (BuildContext builderContext) {
          _timer = Timer(const Duration(seconds: 1), () {
            Navigator.of(context).pop();
          });

          return AlertDialog(
            content: Container(
              height: 100,
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.black54,
                    size: 70,
                  ),
                  Container(
                    width: 80,
                    child: Text(
                      'Saved',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).then((val) {
      if (_timer.isActive) {
        _timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(color: Colors.white70),
      child: Column(
        children: [
          const Text(
            'Originality 独創性',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.thumb_down_rounded,
                size: 35,
              ),
              const SizedBox(width: 20),
              CircleButton(
                onTap: () {
                  a1State = true;
                  a2State = false;
                  a3State = false;
                  a4State = false;
                  a5State = false;
                  a6State = false;
                  a7State = false;
                  a8State = false;
                  a9State = false;
                  a10State = false;
                  _scoreOriginality = 1;
                  setState(() {});
                },
                state: a1State,
                mark: '1',
              ),
              const SizedBox(width: 20),
              CircleButton(
                onTap: () {
                  a1State = false;
                  a2State = true;
                  a3State = false;
                  a4State = false;
                  a5State = false;
                  a6State = false;
                  a7State = false;
                  a8State = false;
                  a9State = false;
                  a10State = false;
                  _scoreOriginality = 2;
                  setState(() {});
                },
                state: a2State,
                mark: '2',
              ),
              const SizedBox(width: 20),
              CircleButton(
                onTap: () {
                  a1State = false;
                  a2State = false;
                  a3State = true;
                  a4State = false;
                  a5State = false;
                  a6State = false;
                  a7State = false;
                  a8State = false;
                  a9State = false;
                  a10State = false;
                  _scoreOriginality = 3;
                  setState(() {});
                },
                state: a3State,
                mark: '3',
              ),
              const SizedBox(width: 20),
              CircleButton(
                onTap: () {
                  a1State = false;
                  a2State = false;
                  a3State = false;
                  a4State = true;
                  a5State = false;
                  a6State = false;
                  a7State = false;
                  a8State = false;
                  a9State = false;
                  a10State = false;
                  _scoreOriginality = 4;
                  setState(() {});
                },
                state: a4State,
                mark: '4',
              ),
              const SizedBox(width: 20),
              CircleButton(
                onTap: () {
                  a1State = false;
                  a2State = false;
                  a3State = false;
                  a4State = false;
                  a5State = true;
                  a6State = false;
                  a7State = false;
                  a8State = false;
                  a9State = false;
                  a10State = false;
                  _scoreOriginality = 5;
                  setState(() {});
                },
                state: a5State,
                mark: '5',
              ),
              const SizedBox(width: 20),
              CircleButton(
                onTap: () {
                  a1State = false;
                  a2State = false;
                  a3State = false;
                  a4State = false;
                  a5State = false;
                  a6State = true;
                  a7State = false;
                  a8State = false;
                  a9State = false;
                  a10State = false;
                  _scoreOriginality = 6;
                  setState(() {});
                },
                state: a6State,
                mark: '6',
              ),
              const SizedBox(width: 20),
              CircleButton(
                onTap: () {
                  a1State = false;
                  a2State = false;
                  a3State = false;
                  a4State = false;
                  a5State = false;
                  a6State = false;
                  a7State = true;
                  a8State = false;
                  a9State = false;
                  a10State = false;
                  _scoreOriginality = 7;
                  setState(() {});
                },
                state: a7State,
                mark: '7',
              ),
              const SizedBox(width: 20),
              CircleButton(
                onTap: () {
                  a1State = false;
                  a2State = false;
                  a3State = false;
                  a4State = false;
                  a5State = false;
                  a6State = false;
                  a7State = false;
                  a8State = true;
                  a9State = false;
                  a10State = false;
                  _scoreOriginality = 8;
                  setState(() {});
                },
                state: a8State,
                mark: '8',
              ),
              const SizedBox(width: 20),
              CircleButton(
                onTap: () {
                  a1State = false;
                  a2State = false;
                  a3State = false;
                  a4State = false;
                  a5State = false;
                  a6State = false;
                  a7State = false;
                  a8State = false;
                  a9State = true;
                  a10State = false;
                  _scoreOriginality = 9;
                  setState(() {});
                },
                state: a9State,
                mark: '9',
              ),
              const SizedBox(width: 20),
              CircleButton(
                onTap: () {
                  a1State = false;
                  a2State = false;
                  a3State = false;
                  a4State = false;
                  a5State = false;
                  a6State = false;
                  a7State = false;
                  a8State = false;
                  a9State = false;
                  a10State = true;
                  _scoreOriginality = 10;
                  setState(() {});
                },
                state: a10State,
                mark: '10',
              ),
              const SizedBox(width: 20),
              const Icon(
                Icons.thumb_up_rounded,
                size: 35,
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(color: Colors.white70),
            child: Column(
              children: [
                const Text(
                  'Theme テーマ',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.thumb_down_rounded,
                      size: 35,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        b1State = true;
                        b2State = false;
                        b3State = false;
                        b4State = false;
                        b5State = false;
                        b6State = false;
                        b7State = false;
                        b8State = false;
                        b9State = false;
                        b10State = false;
                        _scoreTheme = 1;
                        setState(() {});
                      },
                      state: b1State,
                      mark: '1',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        b1State = false;
                        b2State = true;
                        b3State = false;
                        b4State = false;
                        b5State = false;
                        b6State = false;
                        b7State = false;
                        b8State = false;
                        b9State = false;
                        b10State = false;
                        _scoreTheme = 2;
                        setState(() {});
                      },
                      state: b2State,
                      mark: '2',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        b1State = false;
                        b2State = false;
                        b3State = true;
                        b4State = false;
                        b5State = false;
                        b6State = false;
                        b7State = false;
                        b8State = false;
                        b9State = false;
                        b10State = false;
                        _scoreTheme = 3;
                        setState(() {});
                      },
                      state: b3State,
                      mark: '3',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        b1State = false;
                        b2State = false;
                        b3State = false;
                        b4State = true;
                        b5State = false;
                        b6State = false;
                        b7State = false;
                        b8State = false;
                        b9State = false;
                        b10State = false;
                        _scoreTheme = 4;
                        setState(() {});
                      },
                      state: b4State,
                      mark: '4',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        b1State = false;
                        b2State = false;
                        b3State = false;
                        b4State = false;
                        b5State = true;
                        b6State = false;
                        b7State = false;
                        b8State = false;
                        b9State = false;
                        b10State = false;
                        _scoreTheme = 5;
                        setState(() {});
                      },
                      state: b5State,
                      mark: '5',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        b1State = false;
                        b2State = false;
                        b3State = false;
                        b4State = false;
                        b5State = false;
                        b6State = true;
                        b7State = false;
                        b8State = false;
                        b9State = false;
                        b10State = false;
                        _scoreTheme = 6;
                        setState(() {});
                      },
                      state: b6State,
                      mark: '6',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        b1State = false;
                        b2State = false;
                        b3State = false;
                        b4State = false;
                        b5State = false;
                        b6State = false;
                        b7State = true;
                        b8State = false;
                        b9State = false;
                        b10State = false;
                        _scoreTheme = 7;
                        setState(() {});
                      },
                      state: b7State,
                      mark: '7',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        b1State = false;
                        b2State = false;
                        b3State = false;
                        b4State = false;
                        b5State = false;
                        b6State = false;
                        b7State = false;
                        b8State = true;
                        b9State = false;
                        b10State = false;
                        _scoreTheme = 8;
                        setState(() {});
                      },
                      state: b8State,
                      mark: '8',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        b1State = false;
                        b2State = false;
                        b3State = false;
                        b4State = false;
                        b5State = false;
                        b6State = false;
                        b7State = false;
                        b8State = false;
                        b9State = true;
                        b10State = false;
                        _scoreTheme = 9;
                        setState(() {});
                      },
                      state: b9State,
                      mark: '9',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        b1State = false;
                        b2State = false;
                        b3State = false;
                        b4State = false;
                        b5State = false;
                        b6State = false;
                        b7State = false;
                        b8State = false;
                        b9State = false;
                        b10State = true;
                        _scoreTheme = 10;
                        setState(() {});
                      },
                      state: b10State,
                      mark: '10',
                    ),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.thumb_up_rounded,
                      size: 35,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(color: Colors.white70),
            child: Column(
              children: [
                Text(
                  'Character Design キャラクターデザイン',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.thumb_down_rounded,
                      size: 35,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        d1State = true;
                        d2State = false;
                        d3State = false;
                        d4State = false;
                        d5State = false;
                        d6State = false;
                        d7State = false;
                        d8State = false;
                        d9State = false;
                        d10State = false;
                        _scoreCharacterDesign = 1;
                        setState(() {});
                      },
                      state: d1State,
                      mark: '1',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        d1State = false;
                        d2State = true;
                        d3State = false;
                        d4State = false;
                        d5State = false;
                        d6State = false;
                        d7State = false;
                        d8State = false;
                        d9State = false;
                        d10State = false;
                        _scoreCharacterDesign = 2;
                        setState(() {});
                      },
                      state: d2State,
                      mark: '2',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        d1State = false;
                        d2State = false;
                        d3State = true;
                        d4State = false;
                        d5State = false;
                        d6State = false;
                        d7State = false;
                        d8State = false;
                        d9State = false;
                        d10State = false;
                        _scoreCharacterDesign = 3;
                        setState(() {});
                      },
                      state: d3State,
                      mark: '3',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        d1State = false;
                        d2State = false;
                        d3State = false;
                        d4State = true;
                        d5State = false;
                        d6State = false;
                        d7State = false;
                        d8State = false;
                        d9State = false;
                        d10State = false;
                        _scoreCharacterDesign = 4;
                        setState(() {});
                      },
                      state: d4State,
                      mark: '4',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        d1State = false;
                        d2State = false;
                        d3State = false;
                        d4State = false;
                        d5State = true;
                        d6State = false;
                        d7State = false;
                        d8State = false;
                        d9State = false;
                        d10State = false;
                        _scoreCharacterDesign = 5;
                        setState(() {});
                      },
                      state: d5State,
                      mark: '5',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        d1State = false;
                        d2State = false;
                        d3State = false;
                        d4State = false;
                        d5State = false;
                        d6State = true;
                        d7State = false;
                        d8State = false;
                        d9State = false;
                        d10State = false;
                        _scoreCharacterDesign = 6;
                        setState(() {});
                      },
                      state: d6State,
                      mark: '6',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        d1State = false;
                        d2State = false;
                        d3State = false;
                        d4State = false;
                        d5State = false;
                        d6State = false;
                        d7State = true;
                        d8State = false;
                        d9State = false;
                        d10State = false;
                        _scoreCharacterDesign = 7;
                        setState(() {});
                      },
                      state: d7State,
                      mark: '7',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        d1State = false;
                        d2State = false;
                        d3State = false;
                        d4State = false;
                        d5State = false;
                        d6State = false;
                        d7State = false;
                        d8State = true;
                        d9State = false;
                        d10State = false;
                        _scoreCharacterDesign = 8;
                        setState(() {});
                      },
                      state: d8State,
                      mark: '8',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        d1State = false;
                        d2State = false;
                        d3State = false;
                        d4State = false;
                        d5State = false;
                        d6State = false;
                        d7State = false;
                        d8State = false;
                        d9State = true;
                        d10State = false;
                        _scoreCharacterDesign = 9;
                        setState(() {});
                      },
                      state: d9State,
                      mark: '9',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        d1State = false;
                        d2State = false;
                        d3State = false;
                        d4State = false;
                        d5State = false;
                        d6State = false;
                        d7State = false;
                        d8State = false;
                        d9State = false;
                        d10State = true;
                        _scoreCharacterDesign = 10;
                        setState(() {});
                      },
                      state: d10State,
                      mark: '10',
                    ),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.thumb_up_rounded,
                      size: 35,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(color: Colors.white70),
            child: Column(
              children: [
                Text(
                  'Overall Design 全体的なデザイン',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.thumb_down_rounded,
                      size: 35,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        e1State = true;
                        e2State = false;
                        e3State = false;
                        e4State = false;
                        e5State = false;
                        e6State = false;
                        e7State = false;
                        e8State = false;
                        e9State = false;
                        e10State = false;
                        _scoreOverallDesign = 1;
                        setState(() {});
                      },
                      state: e1State,
                      mark: '1',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        e1State = false;
                        e2State = true;
                        e3State = false;
                        e4State = false;
                        e5State = false;
                        e6State = false;
                        e7State = false;
                        e8State = false;
                        e9State = false;
                        e10State = false;
                        _scoreOverallDesign = 2;
                        setState(() {});
                      },
                      state: e2State,
                      mark: '2',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        e1State = false;
                        e2State = false;
                        e3State = true;
                        e4State = false;
                        e5State = false;
                        e6State = false;
                        e7State = false;
                        e8State = false;
                        e9State = false;
                        e10State = false;
                        _scoreOverallDesign = 3;
                        setState(() {});
                      },
                      state: e3State,
                      mark: '3',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        e1State = false;
                        e2State = false;
                        e3State = false;
                        e4State = true;
                        e5State = false;
                        e6State = false;
                        e7State = false;
                        e8State = false;
                        e9State = false;
                        e10State = false;
                        _scoreOverallDesign = 4;
                        setState(() {});
                      },
                      state: e4State,
                      mark: '4',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        e1State = false;
                        e2State = false;
                        e3State = false;
                        e4State = false;
                        e5State = true;
                        e6State = false;
                        e7State = false;
                        e8State = false;
                        e9State = false;
                        e10State = false;
                        _scoreOverallDesign = 5;
                        setState(() {});
                      },
                      state: e5State,
                      mark: '5',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        e1State = false;
                        e2State = false;
                        e3State = false;
                        e4State = false;
                        e5State = false;
                        e6State = true;
                        e7State = false;
                        e8State = false;
                        e9State = false;
                        e10State = false;
                        _scoreOverallDesign = 6;
                        setState(() {});
                      },
                      state: e6State,
                      mark: '6',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        e1State = false;
                        e2State = false;
                        e3State = false;
                        e4State = false;
                        e5State = false;
                        e6State = false;
                        e7State = true;
                        e8State = false;
                        e9State = false;
                        e10State = false;
                        _scoreOverallDesign = 7;
                        setState(() {});
                      },
                      state: e7State,
                      mark: '7',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        e1State = false;
                        e2State = false;
                        e3State = false;
                        e4State = false;
                        e5State = false;
                        e6State = false;
                        e7State = false;
                        e8State = true;
                        e9State = false;
                        e10State = false;
                        _scoreOverallDesign = 8;
                        setState(() {});
                      },
                      state: e8State,
                      mark: '8',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        e1State = false;
                        e2State = false;
                        e3State = false;
                        e4State = false;
                        e5State = false;
                        e6State = false;
                        e7State = false;
                        e8State = false;
                        e9State = true;
                        e10State = false;
                        _scoreOverallDesign = 9;
                        setState(() {});
                      },
                      state: e9State,
                      mark: '9',
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        e1State = false;
                        e2State = false;
                        e3State = false;
                        e4State = false;
                        e5State = false;
                        e6State = false;
                        e7State = false;
                        e8State = false;
                        e9State = false;
                        e10State = true;
                        _scoreOverallDesign = 10;
                        setState(() {});
                      },
                      state: e10State,
                      mark: '10',
                    ),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.thumb_up_rounded,
                      size: 35,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _currentIndex <= 0
                    ? SizedBox(
                        width: 200,
                      )
                    : ElevatedButton(
                        onPressed: () {
                          _prevArt();
                          _saveScore();
                          showPopUp();
                        },
                        child: Text('Previous & Save'),
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size.fromWidth(200),
                          ),
                        ),
                      ),
                SizedBox(width: 100),
                ElevatedButton(
                  onPressed: () {
                    _saveScore();
                    showPopUp();
                  },
                  child: Text('Save'),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size.fromWidth(100),
                    ),
                  ),
                ),
                SizedBox(width: 100),
                _editedProduct.isDigital == 1 &&
                        _currentIndex >= (_digitalItems.length - 1)
                    ? const SizedBox(width: 200)
                    : _editedProduct.isTraditional == 1 &&
                            _currentIndex >= (_traditionalItems.length - 1)
                        ? const SizedBox(width: 200)
                        : ElevatedButton(
                            onPressed: () {
                              _nextArt();
                              _saveScore();
                              showPopUp();
                            },
                            child: Text('Next & Save'),
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all<Size>(
                                Size.fromWidth(200),
                              ),
                            ),
                          ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final bool state;
  final String mark;

  CircleButton({
    @required this.onTap,
    @required this.state,
    @required this.mark,
  });

  @override
  Widget build(BuildContext context) {
    double size = 30.0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkResponse(
          onTap: onTap,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
              color: state ? Colors.black : Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(height: 3),
        Text(mark),
      ],
    );
  }
}
