import 'package:flutter/material.dart';

class ScoringItem extends StatefulWidget {
  const ScoringItem({Key? key}) : super(key: key);

  @override
  State<ScoringItem> createState() => _ScoringItemState();
}

class _ScoringItemState extends State<ScoringItem> {
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
  bool c1State = false;
  bool c2State = false;
  bool c3State = false;
  bool c4State = false;
  bool c5State = false;
  bool c6State = false;
  bool c7State = false;
  bool c8State = false;
  bool c9State = false;
  bool c10State = false;
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

  var _scoreOriginality = 0.0;
  var _scoreTheme = 0.0;
  var _scoreTechnique = 0.0;
  var _scoreCharacterDesign = 0.0;
  var _scoreOverallDesign = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(color: Colors.white70),
      child: Column(
        children: [
          const Text(
            'Originility 独創性',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  setState(() {
                    print(_scoreOriginality);
                    print(_scoreTheme);
                    print(_scoreTechnique);
                    print(_scoreCharacterDesign);
                    print(_scoreOverallDesign);
                  });
                },
                state: a1State,
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
                  setState(() {
                    print(_scoreOriginality);
                    print(_scoreTheme);
                    print(_scoreTechnique);
                    print(_scoreCharacterDesign);
                    print(_scoreOverallDesign);
                  });
                },
                state: a2State,
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
                  setState(() {
                    print(_scoreOriginality);
                    print(_scoreTheme);
                    print(_scoreTechnique);
                    print(_scoreCharacterDesign);
                    print(_scoreOverallDesign);
                  });
                },
                state: a3State,
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
                  setState(() {
                    print(_scoreOriginality);
                    print(_scoreTheme);
                    print(_scoreTechnique);
                    print(_scoreCharacterDesign);
                    print(_scoreOverallDesign);
                  });
                },
                state: a4State,
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
                  setState(() {
                    print(_scoreOriginality);
                    print(_scoreTheme);
                    print(_scoreTechnique);
                    print(_scoreCharacterDesign);
                    print(_scoreOverallDesign);
                  });
                },
                state: a5State,
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
                  setState(() {
                    print(_scoreOriginality);
                    print(_scoreTheme);
                    print(_scoreTechnique);
                    print(_scoreCharacterDesign);
                    print(_scoreOverallDesign);
                  });
                },
                state: a6State,
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
                  setState(() {
                    print(_scoreOriginality);
                    print(_scoreTheme);
                    print(_scoreTechnique);
                    print(_scoreCharacterDesign);
                    print(_scoreOverallDesign);
                  });
                },
                state: a7State,
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
                  setState(() {
                    print(_scoreOriginality);
                    print(_scoreTheme);
                    print(_scoreTechnique);
                    print(_scoreCharacterDesign);
                    print(_scoreOverallDesign);
                  });
                },
                state: a8State,
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
                  setState(() {
                    print(_scoreOriginality);
                    print(_scoreTheme);
                    print(_scoreTechnique);
                    print(_scoreCharacterDesign);
                    print(_scoreOverallDesign);
                  });
                },
                state: a9State,
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
                  setState(() {
                    print(_scoreOriginality);
                    print(_scoreTheme);
                    print(_scoreTechnique);
                    print(_scoreCharacterDesign);
                    print(_scoreOverallDesign);
                  });
                },
                state: a10State,
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
                Text(
                  'Theme',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: b1State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: b2State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: b3State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: b4State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: b5State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: b6State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: b7State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: b8State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: b9State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: b10State,
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
                  'Technique',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.thumb_down_rounded,
                      size: 35,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        c1State = true;
                        c2State = false;
                        c3State = false;
                        c4State = false;
                        c5State = false;
                        c6State = false;
                        c7State = false;
                        c8State = false;
                        c9State = false;
                        c10State = false;
                        _scoreTechnique = 1;
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: c1State,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        c1State = false;
                        c2State = true;
                        c3State = false;
                        c4State = false;
                        c5State = false;
                        c6State = false;
                        c7State = false;
                        c8State = false;
                        c9State = false;
                        c10State = false;
                        _scoreTechnique = 2;
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: c2State,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        c1State = false;
                        c2State = false;
                        c3State = true;
                        c4State = false;
                        c5State = false;
                        c6State = false;
                        c7State = false;
                        c8State = false;
                        c9State = false;
                        c10State = false;
                        _scoreTechnique = 3;
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: c3State,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        c1State = false;
                        c2State = false;
                        c3State = false;
                        c4State = true;
                        c5State = false;
                        c6State = false;
                        c7State = false;
                        c8State = false;
                        c9State = false;
                        c10State = false;
                        _scoreTechnique = 4;
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: c4State,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        c1State = false;
                        c2State = false;
                        c3State = false;
                        c4State = false;
                        c5State = true;
                        c6State = false;
                        c7State = false;
                        c8State = false;
                        c9State = false;
                        c10State = false;
                        _scoreTechnique = 5;
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: c5State,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        c1State = false;
                        c2State = false;
                        c3State = false;
                        c4State = false;
                        c5State = false;
                        c6State = true;
                        c7State = false;
                        c8State = false;
                        c9State = false;
                        c10State = false;
                        _scoreTechnique = 6;
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: c6State,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        c1State = false;
                        c2State = false;
                        c3State = false;
                        c4State = false;
                        c5State = false;
                        c6State = false;
                        c7State = true;
                        c8State = false;
                        c9State = false;
                        c10State = false;
                        _scoreTechnique = 7;
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: c7State,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        c1State = false;
                        c2State = false;
                        c3State = false;
                        c4State = false;
                        c5State = false;
                        c6State = false;
                        c7State = false;
                        c8State = true;
                        c9State = false;
                        c10State = false;
                        _scoreTechnique = 8;
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: c8State,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        c1State = false;
                        c2State = false;
                        c3State = false;
                        c4State = false;
                        c5State = false;
                        c6State = false;
                        c7State = false;
                        c8State = false;
                        c9State = true;
                        c10State = false;
                        _scoreTechnique = 9;
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: c9State,
                    ),
                    const SizedBox(width: 20),
                    CircleButton(
                      onTap: () {
                        c1State = false;
                        c2State = false;
                        c3State = false;
                        c4State = false;
                        c5State = false;
                        c6State = false;
                        c7State = false;
                        c8State = false;
                        c9State = false;
                        c10State = true;
                        _scoreTechnique = 10;
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: c10State,
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
                  'Character Design',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: d1State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: d2State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: d3State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: d4State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: d5State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: d6State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: d7State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: d8State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: d9State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: d10State,
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
                  'Overall Design',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: e1State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: e2State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: e3State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: e4State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: e5State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: e6State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: e7State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: e8State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: e9State,
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
                        setState(() {
                          print(_scoreOriginality);
                          print(_scoreTheme);
                          print(_scoreTechnique);
                          print(_scoreCharacterDesign);
                          print(_scoreOverallDesign);
                        });
                      },
                      state: e10State,
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
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final bool state;

  const CircleButton({
    required this.onTap,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    double size = 30.0;

    return InkResponse(
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
    );
  }
}
