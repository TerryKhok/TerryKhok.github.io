import 'dart:io';
import 'dart:convert';
import 'package:path/path.dart';
import 'package:excel/excel.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:universal_html/html.dart' show AnchorElement;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'scores.dart';

class ExcelItem with ChangeNotifier {
  var igarashiScores = [];
  var sugiuraScores = [];
  var takemuraScores = [];
  var uedaScores = [];
  var hoshiScores = [];
  var kimuraScores = [];
  var hirayamaScores = [];

  Future<void> igarashi() async {
    final url = Uri.parse(
        // 'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/20Pi950TkCaKLwv1X7T96CIKIw43.json');
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/ATENu7ZAXcfS0w1kk4es2OBuh9F3.json');
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
    igarashiScores = loadedScores;
  }

  Future<void> sugiura() async {
    final url = Uri.parse(
        // 'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/RlbBk7ArBeattKxdcktnz7SVurk1.json');
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/ATENu7ZAXcfS0w1kk4es2OBuh9F3.json');
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
    sugiuraScores = loadedScores;
  }

  Future<void> takemura() async {
    final url = Uri.parse(
        // 'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/fm9ngdK18yaXNROrcbh21vW8hs22.json');
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/ATENu7ZAXcfS0w1kk4es2OBuh9F3.json');
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
    takemuraScores = loadedScores;
  }

  Future<void> ueda() async {
    final url = Uri.parse(
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/ATENu7ZAXcfS0w1kk4es2OBuh9F3.json');
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
    uedaScores = loadedScores;
  }

  Future<void> hoshi() async {
    final url = Uri.parse(
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/KmaDqJYTIaXluNRnTHnHorOsvsU2.json');
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
    hoshiScores = loadedScores;
  }

  Future<void> kimura() async {
    final url = Uri.parse(
        // 'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/nGd4V0UkIhdC2a1ji5AhwNl7Yj53.json');
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/ATENu7ZAXcfS0w1kk4es2OBuh9F3.json');
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
    kimuraScores = loadedScores;
  }

  Future<void> hirayama() async {
    final url = Uri.parse(
        // 'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/JP5Di72siTS3iazn1X1m3qDnnHE3.json');
        'https://one-glance-default-rtdb.asia-southeast1.firebasedatabase.app/scores/ATENu7ZAXcfS0w1kk4es2OBuh9F3.json');
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
    hirayamaScores = loadedScores;
  }

  Future<void> createExcel(context) async {
    await igarashi();
    await sugiura();
    await takemura();
    await ueda();
    await hoshi();
    await kimura();
    await hirayama();

    var scores = Provider.of<Scores>(context, listen: false).scores;
    ByteData data = await rootBundle.load("Ekibou_Report_Kai.xlsx");
    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes);
    Sheet sheet1 = excel['作品合計'];
    Sheet sheet2 = excel['審査員合計'];

    //sheet2
    sheet2.cell(CellIndex.indexByString("D4")).value =
        igarashiScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("D5")).value =
        igarashiScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet2.cell(CellIndex.indexByString("D6")).value =
        igarashiScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("D7")).value =
        igarashiScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("E4")).value =
        igarashiScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("E5")).value =
        igarashiScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet2.cell(CellIndex.indexByString("E6")).value =
        igarashiScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("E7")).value =
        igarashiScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("F4")).value =
        igarashiScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("F5")).value =
        igarashiScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet2.cell(CellIndex.indexByString("F6")).value =
        igarashiScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("F7")).value =
        igarashiScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("G4")).value =
        igarashiScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("G5")).value =
        igarashiScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet2.cell(CellIndex.indexByString("G6")).value =
        igarashiScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("G7")).value =
        igarashiScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("H4")).value =
        igarashiScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("H5")).value =
        igarashiScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet2.cell(CellIndex.indexByString("H6")).value =
        igarashiScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("H7")).value =
        igarashiScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("I4")).value =
        igarashiScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("I5")).value =
        igarashiScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet2.cell(CellIndex.indexByString("I6")).value =
        igarashiScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("I7")).value =
        igarashiScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("J4")).value =
        igarashiScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("J5")).value =
        igarashiScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet2.cell(CellIndex.indexByString("J6")).value =
        igarashiScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("J7")).value =
        igarashiScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("K4")).value =
        igarashiScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("K5")).value =
        igarashiScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet2.cell(CellIndex.indexByString("K6")).value =
        igarashiScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("K7")).value =
        igarashiScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("L4")).value =
        igarashiScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("L5")).value =
        igarashiScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet2.cell(CellIndex.indexByString("L6")).value =
        igarashiScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("L7")).value =
        igarashiScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("M4")).value =
        igarashiScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("M5")).value =
        igarashiScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet2.cell(CellIndex.indexByString("M6")).value =
        igarashiScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("M7")).value =
        igarashiScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("D11")).value =
        igarashiScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("D12")).value =
        igarashiScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet2.cell(CellIndex.indexByString("D13")).value =
        igarashiScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("D14")).value =
        igarashiScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("E11")).value =
        igarashiScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("E12")).value =
        igarashiScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet2.cell(CellIndex.indexByString("E13")).value =
        igarashiScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("E14")).value =
        igarashiScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("F11")).value =
        igarashiScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("F12")).value =
        igarashiScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet2.cell(CellIndex.indexByString("F13")).value =
        igarashiScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("F14")).value =
        igarashiScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("G11")).value =
        igarashiScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("G12")).value =
        igarashiScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet2.cell(CellIndex.indexByString("G13")).value =
        igarashiScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("G14")).value =
        igarashiScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("H11")).value =
        igarashiScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("H12")).value =
        igarashiScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet2.cell(CellIndex.indexByString("H13")).value =
        igarashiScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("H14")).value =
        igarashiScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("I11")).value =
        igarashiScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("I12")).value =
        igarashiScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet2.cell(CellIndex.indexByString("I13")).value =
        igarashiScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("I14")).value =
        igarashiScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("J11")).value =
        igarashiScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("J12")).value =
        igarashiScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet2.cell(CellIndex.indexByString("J13")).value =
        igarashiScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("J14")).value =
        igarashiScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("K11")).value =
        igarashiScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("K12")).value =
        igarashiScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet2.cell(CellIndex.indexByString("K13")).value =
        igarashiScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("K14")).value =
        igarashiScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("L11")).value =
        igarashiScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("L12")).value =
        igarashiScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet2.cell(CellIndex.indexByString("L13")).value =
        igarashiScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("L14")).value =
        igarashiScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("M11")).value =
        igarashiScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("M12")).value =
        igarashiScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet2.cell(CellIndex.indexByString("M13")).value =
        igarashiScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("M14")).value =
        igarashiScores.firstWhere((art) => art.id == '090').scoreOverallDesign;

    sheet2.cell(CellIndex.indexByString("Q4")).value =
        sugiuraScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Q5")).value =
        sugiuraScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Q6")).value =
        sugiuraScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Q7")).value =
        sugiuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("R4")).value =
        sugiuraScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("R5")).value =
        sugiuraScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet2.cell(CellIndex.indexByString("R6")).value =
        sugiuraScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("R7")).value =
        sugiuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("S4")).value =
        sugiuraScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("S5")).value =
        sugiuraScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet2.cell(CellIndex.indexByString("S6")).value =
        sugiuraScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("S7")).value =
        sugiuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("T4")).value =
        sugiuraScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("T5")).value =
        sugiuraScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet2.cell(CellIndex.indexByString("T6")).value =
        sugiuraScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("T7")).value =
        sugiuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("U4")).value =
        sugiuraScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("U5")).value =
        sugiuraScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet2.cell(CellIndex.indexByString("U6")).value =
        sugiuraScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("U7")).value =
        sugiuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("V4")).value =
        sugiuraScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("V5")).value =
        sugiuraScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet2.cell(CellIndex.indexByString("V6")).value =
        sugiuraScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("V7")).value =
        sugiuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("W4")).value =
        sugiuraScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("W5")).value =
        sugiuraScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet2.cell(CellIndex.indexByString("W6")).value =
        sugiuraScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("W7")).value =
        sugiuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("X4")).value =
        sugiuraScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("X5")).value =
        sugiuraScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet2.cell(CellIndex.indexByString("X6")).value =
        sugiuraScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("X7")).value =
        sugiuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Y4")).value =
        sugiuraScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Y5")).value =
        sugiuraScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Y6")).value =
        sugiuraScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Y7")).value =
        sugiuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Z4")).value =
        sugiuraScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Z5")).value =
        sugiuraScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Z6")).value =
        sugiuraScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Z7")).value =
        sugiuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Q11")).value =
        sugiuraScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Q12")).value =
        sugiuraScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Q13")).value =
        sugiuraScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Q14")).value =
        sugiuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("R11")).value =
        sugiuraScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("R12")).value =
        sugiuraScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet2.cell(CellIndex.indexByString("R13")).value =
        sugiuraScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("R14")).value =
        sugiuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("S11")).value =
        sugiuraScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("S12")).value =
        sugiuraScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet2.cell(CellIndex.indexByString("S13")).value =
        sugiuraScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("S14")).value =
        sugiuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("T11")).value =
        sugiuraScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("T12")).value =
        sugiuraScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet2.cell(CellIndex.indexByString("T13")).value =
        sugiuraScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("T14")).value =
        sugiuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("U11")).value =
        sugiuraScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("U12")).value =
        sugiuraScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet2.cell(CellIndex.indexByString("U13")).value =
        sugiuraScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("U14")).value =
        sugiuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("V11")).value =
        sugiuraScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("V12")).value =
        sugiuraScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet2.cell(CellIndex.indexByString("V13")).value =
        sugiuraScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("V14")).value =
        sugiuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("W11")).value =
        sugiuraScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("W12")).value =
        sugiuraScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet2.cell(CellIndex.indexByString("W13")).value =
        sugiuraScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("W14")).value =
        sugiuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("X11")).value =
        sugiuraScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("X12")).value =
        sugiuraScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet2.cell(CellIndex.indexByString("X13")).value =
        sugiuraScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("X14")).value =
        sugiuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Y11")).value =
        sugiuraScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Y12")).value =
        sugiuraScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Y13")).value =
        sugiuraScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Y14")).value =
        sugiuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Z11")).value =
        sugiuraScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Z12")).value =
        sugiuraScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Z13")).value =
        sugiuraScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Z14")).value =
        sugiuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign;

    sheet2.cell(CellIndex.indexByString("D19")).value =
        takemuraScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("D20")).value =
        takemuraScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet2.cell(CellIndex.indexByString("D21")).value =
        takemuraScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("D22")).value =
        takemuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("E19")).value =
        takemuraScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("E20")).value =
        takemuraScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet2.cell(CellIndex.indexByString("E21")).value =
        takemuraScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("E22")).value =
        takemuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("F19")).value =
        takemuraScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("F20")).value =
        takemuraScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet2.cell(CellIndex.indexByString("F21")).value =
        takemuraScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("F22")).value =
        takemuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("G19")).value =
        takemuraScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("G20")).value =
        takemuraScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet2.cell(CellIndex.indexByString("G21")).value =
        takemuraScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("G22")).value =
        takemuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("H19")).value =
        takemuraScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("H20")).value =
        takemuraScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet2.cell(CellIndex.indexByString("H21")).value =
        takemuraScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("H22")).value =
        takemuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("I19")).value =
        takemuraScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("I20")).value =
        takemuraScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet2.cell(CellIndex.indexByString("I21")).value =
        takemuraScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("I22")).value =
        takemuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("J19")).value =
        takemuraScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("J20")).value =
        takemuraScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet2.cell(CellIndex.indexByString("J21")).value =
        takemuraScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("J22")).value =
        takemuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("K19")).value =
        takemuraScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("K20")).value =
        takemuraScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet2.cell(CellIndex.indexByString("K21")).value =
        takemuraScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("K22")).value =
        takemuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("L19")).value =
        takemuraScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("L20")).value =
        takemuraScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet2.cell(CellIndex.indexByString("L21")).value =
        takemuraScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("L22")).value =
        takemuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("M19")).value =
        takemuraScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("M20")).value =
        takemuraScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet2.cell(CellIndex.indexByString("M21")).value =
        takemuraScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("M22")).value =
        takemuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("D26")).value =
        takemuraScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("D27")).value =
        takemuraScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet2.cell(CellIndex.indexByString("D28")).value =
        takemuraScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("D29")).value =
        takemuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("E26")).value =
        takemuraScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("E27")).value =
        takemuraScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet2.cell(CellIndex.indexByString("E28")).value =
        takemuraScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("E29")).value =
        takemuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("F26")).value =
        takemuraScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("F27")).value =
        takemuraScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet2.cell(CellIndex.indexByString("F28")).value =
        takemuraScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("F29")).value =
        takemuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("G26")).value =
        takemuraScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("G27")).value =
        takemuraScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet2.cell(CellIndex.indexByString("G28")).value =
        takemuraScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("G29")).value =
        takemuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("H26")).value =
        takemuraScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("H27")).value =
        takemuraScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet2.cell(CellIndex.indexByString("H28")).value =
        takemuraScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("H29")).value =
        takemuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("I26")).value =
        takemuraScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("I27")).value =
        takemuraScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet2.cell(CellIndex.indexByString("I28")).value =
        takemuraScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("I29")).value =
        takemuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("J26")).value =
        takemuraScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("J27")).value =
        takemuraScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet2.cell(CellIndex.indexByString("J28")).value =
        takemuraScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("J29")).value =
        takemuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("K26")).value =
        takemuraScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("K27")).value =
        takemuraScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet2.cell(CellIndex.indexByString("K28")).value =
        takemuraScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("K29")).value =
        takemuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("L26")).value =
        takemuraScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("L27")).value =
        takemuraScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet2.cell(CellIndex.indexByString("L28")).value =
        takemuraScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("L29")).value =
        takemuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("M26")).value =
        takemuraScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("M27")).value =
        takemuraScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet2.cell(CellIndex.indexByString("M28")).value =
        takemuraScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("M29")).value =
        takemuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign;

    sheet2.cell(CellIndex.indexByString("Q19")).value =
        uedaScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Q20")).value =
        uedaScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Q21")).value =
        uedaScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Q22")).value =
        uedaScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("R19")).value =
        uedaScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("R20")).value =
        uedaScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet2.cell(CellIndex.indexByString("R21")).value =
        uedaScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("R22")).value =
        uedaScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("S19")).value =
        uedaScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("S20")).value =
        uedaScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet2.cell(CellIndex.indexByString("S21")).value =
        uedaScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("S22")).value =
        uedaScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("T19")).value =
        uedaScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("T20")).value =
        uedaScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet2.cell(CellIndex.indexByString("T21")).value =
        uedaScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("T22")).value =
        uedaScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("U19")).value =
        uedaScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("U20")).value =
        uedaScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet2.cell(CellIndex.indexByString("U21")).value =
        uedaScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("U22")).value =
        uedaScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("V19")).value =
        uedaScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("V20")).value =
        uedaScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet2.cell(CellIndex.indexByString("V21")).value =
        uedaScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("V22")).value =
        uedaScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("W19")).value =
        uedaScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("W20")).value =
        uedaScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet2.cell(CellIndex.indexByString("W21")).value =
        uedaScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("W22")).value =
        uedaScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("X19")).value =
        uedaScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("X20")).value =
        uedaScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet2.cell(CellIndex.indexByString("X21")).value =
        uedaScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("X22")).value =
        uedaScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Y19")).value =
        uedaScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Y20")).value =
        uedaScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Y21")).value =
        uedaScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Y22")).value =
        uedaScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Z19")).value =
        uedaScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Z20")).value =
        uedaScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Z21")).value =
        uedaScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Z22")).value =
        uedaScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Q26")).value =
        uedaScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Q27")).value =
        uedaScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Q28")).value =
        uedaScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Q29")).value =
        uedaScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("R26")).value =
        uedaScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("R27")).value =
        uedaScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet2.cell(CellIndex.indexByString("R28")).value =
        uedaScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("R29")).value =
        uedaScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("S26")).value =
        uedaScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("S27")).value =
        uedaScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet2.cell(CellIndex.indexByString("S28")).value =
        uedaScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("S29")).value =
        uedaScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("T26")).value =
        uedaScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("T27")).value =
        uedaScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet2.cell(CellIndex.indexByString("T28")).value =
        uedaScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("T29")).value =
        uedaScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("U26")).value =
        uedaScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("U27")).value =
        uedaScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet2.cell(CellIndex.indexByString("U28")).value =
        uedaScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("U29")).value =
        uedaScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("V26")).value =
        uedaScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("V27")).value =
        uedaScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet2.cell(CellIndex.indexByString("V28")).value =
        uedaScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("V29")).value =
        uedaScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("W26")).value =
        uedaScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("W27")).value =
        uedaScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet2.cell(CellIndex.indexByString("W28")).value =
        uedaScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("W29")).value =
        uedaScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("X26")).value =
        uedaScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("X27")).value =
        uedaScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet2.cell(CellIndex.indexByString("X28")).value =
        uedaScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("X29")).value =
        uedaScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Y26")).value =
        uedaScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Y27")).value =
        uedaScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Y28")).value =
        uedaScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Y29")).value =
        uedaScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Z26")).value =
        uedaScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Z27")).value =
        uedaScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Z28")).value =
        uedaScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Z29")).value =
        uedaScores.firstWhere((art) => art.id == '090').scoreOverallDesign;

    sheet2.cell(CellIndex.indexByString("D34")).value =
        hoshiScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("D35")).value =
        hoshiScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet2.cell(CellIndex.indexByString("D36")).value =
        hoshiScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("D37")).value =
        hoshiScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("E34")).value =
        hoshiScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("E35")).value =
        hoshiScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet2.cell(CellIndex.indexByString("E36")).value =
        hoshiScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("E37")).value =
        hoshiScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("F34")).value =
        hoshiScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("F35")).value =
        hoshiScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet2.cell(CellIndex.indexByString("F36")).value =
        hoshiScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("F37")).value =
        hoshiScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("G34")).value =
        hoshiScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("G35")).value =
        hoshiScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet2.cell(CellIndex.indexByString("G36")).value =
        hoshiScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("G37")).value =
        hoshiScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("H34")).value =
        hoshiScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("H35")).value =
        hoshiScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet2.cell(CellIndex.indexByString("H36")).value =
        hoshiScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("H37")).value =
        hoshiScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("I34")).value =
        hoshiScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("I35")).value =
        hoshiScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet2.cell(CellIndex.indexByString("I36")).value =
        hoshiScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("I37")).value =
        hoshiScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("J34")).value =
        hoshiScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("J35")).value =
        hoshiScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet2.cell(CellIndex.indexByString("J36")).value =
        hoshiScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("J37")).value =
        hoshiScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("K34")).value =
        hoshiScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("K35")).value =
        hoshiScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet2.cell(CellIndex.indexByString("K36")).value =
        hoshiScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("K37")).value =
        hoshiScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("L34")).value =
        hoshiScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("L35")).value =
        hoshiScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet2.cell(CellIndex.indexByString("L36")).value =
        hoshiScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("L37")).value =
        hoshiScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("M34")).value =
        hoshiScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("M35")).value =
        hoshiScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet2.cell(CellIndex.indexByString("M36")).value =
        hoshiScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("M37")).value =
        hoshiScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("D41")).value =
        hoshiScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("D42")).value =
        hoshiScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet2.cell(CellIndex.indexByString("D43")).value =
        hoshiScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("D44")).value =
        hoshiScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("E41")).value =
        hoshiScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("E42")).value =
        hoshiScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet2.cell(CellIndex.indexByString("E43")).value =
        hoshiScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("E44")).value =
        hoshiScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("F41")).value =
        hoshiScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("F42")).value =
        hoshiScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet2.cell(CellIndex.indexByString("F43")).value =
        hoshiScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("F44")).value =
        hoshiScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("G41")).value =
        hoshiScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("G42")).value =
        hoshiScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet2.cell(CellIndex.indexByString("G43")).value =
        hoshiScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("G44")).value =
        hoshiScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("H41")).value =
        hoshiScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("H42")).value =
        hoshiScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet2.cell(CellIndex.indexByString("H43")).value =
        hoshiScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("H44")).value =
        hoshiScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("I41")).value =
        hoshiScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("I42")).value =
        hoshiScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet2.cell(CellIndex.indexByString("I43")).value =
        hoshiScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("I44")).value =
        hoshiScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("J41")).value =
        hoshiScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("J42")).value =
        hoshiScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet2.cell(CellIndex.indexByString("J43")).value =
        hoshiScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("J44")).value =
        hoshiScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("K41")).value =
        hoshiScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("K42")).value =
        hoshiScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet2.cell(CellIndex.indexByString("K43")).value =
        hoshiScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("K44")).value =
        hoshiScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("L41")).value =
        hoshiScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("L42")).value =
        hoshiScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet2.cell(CellIndex.indexByString("L43")).value =
        hoshiScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("L44")).value =
        hoshiScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("M41")).value =
        hoshiScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("M42")).value =
        hoshiScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet2.cell(CellIndex.indexByString("M43")).value =
        hoshiScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("M44")).value =
        hoshiScores.firstWhere((art) => art.id == '090').scoreOverallDesign;

    sheet2.cell(CellIndex.indexByString("Q34")).value =
        kimuraScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Q35")).value =
        kimuraScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Q36")).value =
        kimuraScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Q37")).value =
        kimuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("R34")).value =
        kimuraScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("R35")).value =
        kimuraScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet2.cell(CellIndex.indexByString("R36")).value =
        kimuraScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("R37")).value =
        kimuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("S34")).value =
        kimuraScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("S35")).value =
        kimuraScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet2.cell(CellIndex.indexByString("S36")).value =
        kimuraScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("S37")).value =
        kimuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("T34")).value =
        kimuraScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("T35")).value =
        kimuraScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet2.cell(CellIndex.indexByString("T36")).value =
        kimuraScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("T37")).value =
        kimuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("U34")).value =
        kimuraScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("U35")).value =
        kimuraScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet2.cell(CellIndex.indexByString("U36")).value =
        kimuraScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("U37")).value =
        kimuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("V34")).value =
        kimuraScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("V35")).value =
        kimuraScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet2.cell(CellIndex.indexByString("V36")).value =
        kimuraScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("V37")).value =
        kimuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("W34")).value =
        kimuraScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("W35")).value =
        kimuraScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet2.cell(CellIndex.indexByString("W36")).value =
        kimuraScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("W37")).value =
        kimuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("X34")).value =
        kimuraScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("X35")).value =
        kimuraScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet2.cell(CellIndex.indexByString("X36")).value =
        kimuraScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("X37")).value =
        kimuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Y34")).value =
        kimuraScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Y35")).value =
        kimuraScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Y36")).value =
        kimuraScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Y37")).value =
        kimuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Z34")).value =
        kimuraScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Z35")).value =
        kimuraScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Z36")).value =
        kimuraScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Z37")).value =
        kimuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Q41")).value =
        kimuraScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Q42")).value =
        kimuraScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Q43")).value =
        kimuraScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Q44")).value =
        kimuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("R41")).value =
        kimuraScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("R42")).value =
        kimuraScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet2.cell(CellIndex.indexByString("R43")).value =
        kimuraScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("R44")).value =
        kimuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("S41")).value =
        kimuraScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("S42")).value =
        kimuraScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet2.cell(CellIndex.indexByString("S43")).value =
        kimuraScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("S44")).value =
        kimuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("T41")).value =
        kimuraScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("T42")).value =
        kimuraScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet2.cell(CellIndex.indexByString("T43")).value =
        kimuraScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("T44")).value =
        kimuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("U41")).value =
        kimuraScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("U42")).value =
        kimuraScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet2.cell(CellIndex.indexByString("U43")).value =
        kimuraScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("U44")).value =
        kimuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("V41")).value =
        kimuraScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("V42")).value =
        kimuraScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet2.cell(CellIndex.indexByString("V43")).value =
        kimuraScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("V44")).value =
        kimuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("W41")).value =
        kimuraScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("W42")).value =
        kimuraScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet2.cell(CellIndex.indexByString("W43")).value =
        kimuraScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("W44")).value =
        kimuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("X41")).value =
        kimuraScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("X42")).value =
        kimuraScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet2.cell(CellIndex.indexByString("X43")).value =
        kimuraScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("X44")).value =
        kimuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Y41")).value =
        kimuraScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Y42")).value =
        kimuraScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Y43")).value =
        kimuraScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Y44")).value =
        kimuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("Z41")).value =
        kimuraScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("Z42")).value =
        kimuraScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet2.cell(CellIndex.indexByString("Z43")).value =
        kimuraScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("Z44")).value =
        kimuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign;

    sheet2.cell(CellIndex.indexByString("D49")).value =
        hirayamaScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("D50")).value =
        hirayamaScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet2.cell(CellIndex.indexByString("D51")).value =
        hirayamaScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("D52")).value =
        hirayamaScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("E19")).value =
        hirayamaScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("E50")).value =
        hirayamaScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet2.cell(CellIndex.indexByString("E51")).value =
        hirayamaScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("E52")).value =
        hirayamaScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("F49")).value =
        hirayamaScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("F50")).value =
        hirayamaScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet2.cell(CellIndex.indexByString("F51")).value =
        hirayamaScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("F52")).value =
        hirayamaScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("G49")).value =
        hirayamaScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("G50")).value =
        hirayamaScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet2.cell(CellIndex.indexByString("G51")).value =
        hirayamaScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("G52")).value =
        hirayamaScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("H49")).value =
        hirayamaScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("H50")).value =
        hirayamaScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet2.cell(CellIndex.indexByString("H51")).value =
        hirayamaScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("H52")).value =
        hirayamaScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("I49")).value =
        hirayamaScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("I50")).value =
        hirayamaScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet2.cell(CellIndex.indexByString("I51")).value =
        hirayamaScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("I52")).value =
        hirayamaScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("J49")).value =
        hirayamaScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("J50")).value =
        hirayamaScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet2.cell(CellIndex.indexByString("J51")).value =
        hirayamaScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("J52")).value =
        hirayamaScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("K49")).value =
        hirayamaScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("K50")).value =
        hirayamaScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet2.cell(CellIndex.indexByString("K51")).value =
        hirayamaScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("K52")).value =
        hirayamaScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("L49")).value =
        hirayamaScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("L50")).value =
        hirayamaScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet2.cell(CellIndex.indexByString("L51")).value =
        hirayamaScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("L52")).value =
        hirayamaScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("M49")).value =
        hirayamaScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("M50")).value =
        hirayamaScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet2.cell(CellIndex.indexByString("M51")).value =
        hirayamaScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("M52")).value =
        hirayamaScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("D56")).value =
        hirayamaScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("D57")).value =
        hirayamaScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet2.cell(CellIndex.indexByString("D58")).value =
        hirayamaScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("D59")).value =
        hirayamaScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("E56")).value =
        hirayamaScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("E57")).value =
        hirayamaScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet2.cell(CellIndex.indexByString("E58")).value =
        hirayamaScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("E59")).value =
        hirayamaScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("F56")).value =
        hirayamaScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("F57")).value =
        hirayamaScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet2.cell(CellIndex.indexByString("F58")).value =
        hirayamaScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("F59")).value =
        hirayamaScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("G56")).value =
        hirayamaScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("G57")).value =
        hirayamaScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet2.cell(CellIndex.indexByString("G58")).value =
        hirayamaScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("G59")).value =
        hirayamaScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("H56")).value =
        hirayamaScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("H57")).value =
        hirayamaScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet2.cell(CellIndex.indexByString("H58")).value =
        hirayamaScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("H59")).value =
        hirayamaScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("I56")).value =
        hirayamaScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("I57")).value =
        hirayamaScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet2.cell(CellIndex.indexByString("I58")).value =
        hirayamaScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("I59")).value =
        hirayamaScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("J56")).value =
        hirayamaScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("J57")).value =
        hirayamaScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet2.cell(CellIndex.indexByString("J58")).value =
        hirayamaScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("J59")).value =
        hirayamaScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("K56")).value =
        hirayamaScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("K57")).value =
        hirayamaScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet2.cell(CellIndex.indexByString("K58")).value =
        hirayamaScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("K59")).value =
        hirayamaScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("L56")).value =
        hirayamaScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("L57")).value =
        hirayamaScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet2.cell(CellIndex.indexByString("L58")).value =
        hirayamaScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("L59")).value =
        hirayamaScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet2.cell(CellIndex.indexByString("M56")).value =
        hirayamaScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet2.cell(CellIndex.indexByString("M57")).value =
        hirayamaScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet2.cell(CellIndex.indexByString("M58")).value =
        hirayamaScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet2.cell(CellIndex.indexByString("M59")).value =
        hirayamaScores.firstWhere((art) => art.id == '090').scoreOverallDesign;

    //sheet1 bottom digital
    sheet1.cell(CellIndex.indexByString("D12")).value =
        igarashiScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("D13")).value =
        igarashiScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet1.cell(CellIndex.indexByString("D14")).value =
        igarashiScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("D15")).value =
        igarashiScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("D16")).value = (igarashiScores
            .firstWhere((art) => art.id == '109')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '109').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '109').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("E12")).value =
        sugiuraScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("E13")).value =
        sugiuraScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet1.cell(CellIndex.indexByString("E14")).value =
        sugiuraScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("E15")).value =
        sugiuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("E16")).value = (sugiuraScores
            .firstWhere((art) => art.id == '109')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '109').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("F12")).value =
        takemuraScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("F13")).value =
        takemuraScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet1.cell(CellIndex.indexByString("F14")).value =
        takemuraScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("F15")).value =
        takemuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("F16")).value = (takemuraScores
            .firstWhere((art) => art.id == '109')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '109').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("G12")).value =
        uedaScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("G13")).value =
        uedaScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet1.cell(CellIndex.indexByString("G14")).value =
        uedaScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("G15")).value =
        uedaScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("G16")).value =
        (uedaScores.firstWhere((art) => art.id == '109').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '109').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '109').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '109').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("H12")).value =
        hoshiScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("H13")).value =
        hoshiScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet1.cell(CellIndex.indexByString("H14")).value =
        hoshiScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("H15")).value =
        hoshiScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("H16")).value = (hoshiScores
            .firstWhere((art) => art.id == '109')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '109').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '109').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("I12")).value =
        kimuraScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("I13")).value =
        kimuraScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet1.cell(CellIndex.indexByString("I14")).value =
        kimuraScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("I15")).value =
        kimuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("I16")).value = (kimuraScores
            .firstWhere((art) => art.id == '109')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '109').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("J12")).value =
        hirayamaScores.firstWhere((art) => art.id == '109').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("J13")).value =
        hirayamaScores.firstWhere((art) => art.id == '109').scoreTheme;
    sheet1.cell(CellIndex.indexByString("J14")).value =
        hirayamaScores.firstWhere((art) => art.id == '109').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("J15")).value =
        hirayamaScores.firstWhere((art) => art.id == '109').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("J16")).value = (hirayamaScores
            .firstWhere((art) => art.id == '109')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '109').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '109').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("D20")).value =
        igarashiScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("D21")).value =
        igarashiScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet1.cell(CellIndex.indexByString("D22")).value =
        igarashiScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("D23")).value =
        igarashiScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("D24")).value = (igarashiScores
            .firstWhere((art) => art.id == '115')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '115').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '115').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("E20")).value =
        sugiuraScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("E21")).value =
        sugiuraScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet1.cell(CellIndex.indexByString("E22")).value =
        sugiuraScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("E23")).value =
        sugiuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("E24")).value = (sugiuraScores
            .firstWhere((art) => art.id == '115')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '115').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("F20")).value =
        takemuraScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("F21")).value =
        takemuraScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet1.cell(CellIndex.indexByString("F22")).value =
        takemuraScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("F23")).value =
        takemuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("F24")).value = (takemuraScores
            .firstWhere((art) => art.id == '115')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '115').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("G20")).value =
        uedaScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("G21")).value =
        uedaScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet1.cell(CellIndex.indexByString("G22")).value =
        uedaScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("G23")).value =
        uedaScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("G24")).value =
        (uedaScores.firstWhere((art) => art.id == '115').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '115').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '115').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '115').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("H20")).value =
        hoshiScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("H21")).value =
        hoshiScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet1.cell(CellIndex.indexByString("H22")).value =
        hoshiScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("H23")).value =
        hoshiScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("H24")).value = (hoshiScores
            .firstWhere((art) => art.id == '115')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '115').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '115').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("I20")).value =
        kimuraScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("I21")).value =
        kimuraScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet1.cell(CellIndex.indexByString("I22")).value =
        kimuraScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("I23")).value =
        kimuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("I24")).value = (kimuraScores
            .firstWhere((art) => art.id == '115')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '115').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("J20")).value =
        hirayamaScores.firstWhere((art) => art.id == '115').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("J21")).value =
        hirayamaScores.firstWhere((art) => art.id == '115').scoreTheme;
    sheet1.cell(CellIndex.indexByString("J22")).value =
        hirayamaScores.firstWhere((art) => art.id == '115').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("J23")).value =
        hirayamaScores.firstWhere((art) => art.id == '115').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("J24")).value = (hirayamaScores
            .firstWhere((art) => art.id == '115')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '115').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '115').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("D28")).value =
        igarashiScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("D29")).value =
        igarashiScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet1.cell(CellIndex.indexByString("D30")).value =
        igarashiScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("D31")).value =
        igarashiScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("D32")).value = (igarashiScores
            .firstWhere((art) => art.id == '125')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '125').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '125').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("E28")).value =
        sugiuraScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("E29")).value =
        sugiuraScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet1.cell(CellIndex.indexByString("E30")).value =
        sugiuraScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("E31")).value =
        sugiuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("E32")).value = (sugiuraScores
            .firstWhere((art) => art.id == '125')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '125').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("F28")).value =
        takemuraScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("F29")).value =
        takemuraScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet1.cell(CellIndex.indexByString("F30")).value =
        takemuraScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("F31")).value =
        takemuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("F32")).value = (takemuraScores
            .firstWhere((art) => art.id == '125')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '125').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("G28")).value =
        uedaScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("G29")).value =
        uedaScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet1.cell(CellIndex.indexByString("G30")).value =
        uedaScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("G31")).value =
        uedaScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("G32")).value =
        (uedaScores.firstWhere((art) => art.id == '125').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '125').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '125').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '125').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("H28")).value =
        hoshiScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("H29")).value =
        hoshiScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet1.cell(CellIndex.indexByString("H30")).value =
        hoshiScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("H31")).value =
        hoshiScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("H32")).value = (hoshiScores
            .firstWhere((art) => art.id == '125')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '125').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '125').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("I28")).value =
        kimuraScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("I29")).value =
        kimuraScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet1.cell(CellIndex.indexByString("I30")).value =
        kimuraScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("I31")).value =
        kimuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("I32")).value = (kimuraScores
            .firstWhere((art) => art.id == '125')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '125').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("J28")).value =
        hirayamaScores.firstWhere((art) => art.id == '125').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("J29")).value =
        hirayamaScores.firstWhere((art) => art.id == '125').scoreTheme;
    sheet1.cell(CellIndex.indexByString("J30")).value =
        hirayamaScores.firstWhere((art) => art.id == '125').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("J31")).value =
        hirayamaScores.firstWhere((art) => art.id == '125').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("J32")).value = (hirayamaScores
            .firstWhere((art) => art.id == '125')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '125').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '125').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("D36")).value =
        igarashiScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("D37")).value =
        igarashiScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet1.cell(CellIndex.indexByString("D38")).value =
        igarashiScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("D39")).value =
        igarashiScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("D40")).value = (igarashiScores
            .firstWhere((art) => art.id == '126')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '126').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '126').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("E36")).value =
        sugiuraScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("E37")).value =
        sugiuraScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet1.cell(CellIndex.indexByString("E38")).value =
        sugiuraScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("E39")).value =
        sugiuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("E40")).value = (sugiuraScores
            .firstWhere((art) => art.id == '126')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '126').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("F36")).value =
        takemuraScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("F37")).value =
        takemuraScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet1.cell(CellIndex.indexByString("F38")).value =
        takemuraScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("F39")).value =
        takemuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("F40")).value = (takemuraScores
            .firstWhere((art) => art.id == '126')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '126').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("G36")).value =
        uedaScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("G37")).value =
        uedaScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet1.cell(CellIndex.indexByString("G38")).value =
        uedaScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("G39")).value =
        uedaScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("G40")).value =
        (uedaScores.firstWhere((art) => art.id == '126').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '126').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '126').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '126').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("H36")).value =
        hoshiScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("H37")).value =
        hoshiScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet1.cell(CellIndex.indexByString("H38")).value =
        hoshiScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("H39")).value =
        hoshiScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("H40")).value = (hoshiScores
            .firstWhere((art) => art.id == '126')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '126').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '126').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("I36")).value =
        kimuraScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("I37")).value =
        kimuraScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet1.cell(CellIndex.indexByString("I38")).value =
        kimuraScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("I39")).value =
        kimuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("I40")).value = (kimuraScores
            .firstWhere((art) => art.id == '126')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '126').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("J36")).value =
        hirayamaScores.firstWhere((art) => art.id == '126').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("J37")).value =
        hirayamaScores.firstWhere((art) => art.id == '126').scoreTheme;
    sheet1.cell(CellIndex.indexByString("J38")).value =
        hirayamaScores.firstWhere((art) => art.id == '126').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("J39")).value =
        hirayamaScores.firstWhere((art) => art.id == '126').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("J40")).value = (hirayamaScores
            .firstWhere((art) => art.id == '126')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '126').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '126').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("D44")).value =
        igarashiScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("D45")).value =
        igarashiScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet1.cell(CellIndex.indexByString("D46")).value =
        igarashiScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("D47")).value =
        igarashiScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("D48")).value = (igarashiScores
            .firstWhere((art) => art.id == '130')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '130').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '130').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("E44")).value =
        sugiuraScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("E45")).value =
        sugiuraScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet1.cell(CellIndex.indexByString("E46")).value =
        sugiuraScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("E47")).value =
        sugiuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("E48")).value = (sugiuraScores
            .firstWhere((art) => art.id == '130')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '130').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("F44")).value =
        takemuraScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("F45")).value =
        takemuraScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet1.cell(CellIndex.indexByString("F46")).value =
        takemuraScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("F47")).value =
        takemuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("F48")).value = (takemuraScores
            .firstWhere((art) => art.id == '130')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '130').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("G44")).value =
        uedaScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("G45")).value =
        uedaScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet1.cell(CellIndex.indexByString("G46")).value =
        uedaScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("G47")).value =
        uedaScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("G48")).value =
        (uedaScores.firstWhere((art) => art.id == '130').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '130').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '130').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '130').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("H44")).value =
        hoshiScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("H45")).value =
        hoshiScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet1.cell(CellIndex.indexByString("H46")).value =
        hoshiScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("H47")).value =
        hoshiScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("H48")).value = (hoshiScores
            .firstWhere((art) => art.id == '130')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '130').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '130').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("I44")).value =
        kimuraScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("I45")).value =
        kimuraScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet1.cell(CellIndex.indexByString("I46")).value =
        kimuraScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("I47")).value =
        kimuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("I48")).value = (kimuraScores
            .firstWhere((art) => art.id == '130')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '130').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("J44")).value =
        hirayamaScores.firstWhere((art) => art.id == '130').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("J45")).value =
        hirayamaScores.firstWhere((art) => art.id == '130').scoreTheme;
    sheet1.cell(CellIndex.indexByString("J46")).value =
        hirayamaScores.firstWhere((art) => art.id == '130').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("J47")).value =
        hirayamaScores.firstWhere((art) => art.id == '130').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("J48")).value = (hirayamaScores
            .firstWhere((art) => art.id == '130')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '130').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '130').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("D52")).value =
        igarashiScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("D53")).value =
        igarashiScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet1.cell(CellIndex.indexByString("D54")).value =
        igarashiScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("D55")).value =
        igarashiScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("D56")).value = (igarashiScores
            .firstWhere((art) => art.id == '137')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '137').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '137').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("E52")).value =
        sugiuraScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("E53")).value =
        sugiuraScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet1.cell(CellIndex.indexByString("E54")).value =
        sugiuraScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("E55")).value =
        sugiuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("E56")).value = (sugiuraScores
            .firstWhere((art) => art.id == '137')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '137').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("F52")).value =
        takemuraScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("F53")).value =
        takemuraScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet1.cell(CellIndex.indexByString("F54")).value =
        takemuraScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("F55")).value =
        takemuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("F56")).value = (takemuraScores
            .firstWhere((art) => art.id == '137')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '137').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("G52")).value =
        uedaScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("G53")).value =
        uedaScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet1.cell(CellIndex.indexByString("G54")).value =
        uedaScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("G55")).value =
        uedaScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("G56")).value =
        (uedaScores.firstWhere((art) => art.id == '137').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '137').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '137').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '137').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("H52")).value =
        hoshiScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("H53")).value =
        hoshiScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet1.cell(CellIndex.indexByString("H54")).value =
        hoshiScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("H55")).value =
        hoshiScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("H56")).value = (hoshiScores
            .firstWhere((art) => art.id == '137')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '137').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '137').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("I52")).value =
        kimuraScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("I53")).value =
        kimuraScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet1.cell(CellIndex.indexByString("I54")).value =
        kimuraScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("I55")).value =
        kimuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("I56")).value = (kimuraScores
            .firstWhere((art) => art.id == '137')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '137').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("J52")).value =
        hirayamaScores.firstWhere((art) => art.id == '137').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("J53")).value =
        hirayamaScores.firstWhere((art) => art.id == '137').scoreTheme;
    sheet1.cell(CellIndex.indexByString("J54")).value =
        hirayamaScores.firstWhere((art) => art.id == '137').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("J55")).value =
        hirayamaScores.firstWhere((art) => art.id == '137').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("J56")).value = (hirayamaScores
            .firstWhere((art) => art.id == '137')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '137').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '137').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("D60")).value =
        igarashiScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("D61")).value =
        igarashiScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet1.cell(CellIndex.indexByString("D62")).value =
        igarashiScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("D63")).value =
        igarashiScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("D64")).value = (igarashiScores
            .firstWhere((art) => art.id == '143')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '143').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '143').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("E60")).value =
        sugiuraScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("E61")).value =
        sugiuraScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet1.cell(CellIndex.indexByString("E62")).value =
        sugiuraScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("E63")).value =
        sugiuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("E64")).value = (sugiuraScores
            .firstWhere((art) => art.id == '143')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '143').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("F60")).value =
        takemuraScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("F61")).value =
        takemuraScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet1.cell(CellIndex.indexByString("F62")).value =
        takemuraScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("F63")).value =
        takemuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("F64")).value = (takemuraScores
            .firstWhere((art) => art.id == '143')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '143').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("G60")).value =
        uedaScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("G61")).value =
        uedaScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet1.cell(CellIndex.indexByString("G62")).value =
        uedaScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("G63")).value =
        uedaScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("G64")).value =
        (uedaScores.firstWhere((art) => art.id == '143').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '143').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '143').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '143').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("H60")).value =
        hoshiScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("H61")).value =
        hoshiScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet1.cell(CellIndex.indexByString("H62")).value =
        hoshiScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("H63")).value =
        hoshiScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("H64")).value = (hoshiScores
            .firstWhere((art) => art.id == '143')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '143').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '143').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("I60")).value =
        kimuraScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("I61")).value =
        kimuraScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet1.cell(CellIndex.indexByString("I62")).value =
        kimuraScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("I63")).value =
        kimuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("I64")).value = (kimuraScores
            .firstWhere((art) => art.id == '143')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '143').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("J60")).value =
        hirayamaScores.firstWhere((art) => art.id == '143').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("J61")).value =
        hirayamaScores.firstWhere((art) => art.id == '143').scoreTheme;
    sheet1.cell(CellIndex.indexByString("J62")).value =
        hirayamaScores.firstWhere((art) => art.id == '143').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("J63")).value =
        hirayamaScores.firstWhere((art) => art.id == '143').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("J64")).value = (hirayamaScores
            .firstWhere((art) => art.id == '143')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '143').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '143').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("D68")).value =
        igarashiScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("D69")).value =
        igarashiScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet1.cell(CellIndex.indexByString("D70")).value =
        igarashiScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("D71")).value =
        igarashiScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("D72")).value = (igarashiScores
            .firstWhere((art) => art.id == '044')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '044').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '044').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("E68")).value =
        sugiuraScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("E69")).value =
        sugiuraScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet1.cell(CellIndex.indexByString("E70")).value =
        sugiuraScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("E71")).value =
        sugiuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("E72")).value = (sugiuraScores
            .firstWhere((art) => art.id == '044')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '044').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("F68")).value =
        takemuraScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("F69")).value =
        takemuraScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet1.cell(CellIndex.indexByString("F70")).value =
        takemuraScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("F71")).value =
        takemuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("F72")).value = (takemuraScores
            .firstWhere((art) => art.id == '044')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '044').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("G68")).value =
        uedaScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("G69")).value =
        uedaScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet1.cell(CellIndex.indexByString("G70")).value =
        uedaScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("G71")).value =
        uedaScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("G72")).value =
        (uedaScores.firstWhere((art) => art.id == '044').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '044').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '044').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '044').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("H68")).value =
        hoshiScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("H69")).value =
        hoshiScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet1.cell(CellIndex.indexByString("H70")).value =
        hoshiScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("H71")).value =
        hoshiScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("H72")).value = (hoshiScores
            .firstWhere((art) => art.id == '044')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '044').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '044').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("I68")).value =
        kimuraScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("I69")).value =
        kimuraScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet1.cell(CellIndex.indexByString("I70")).value =
        kimuraScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("I71")).value =
        kimuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("I72")).value = (kimuraScores
            .firstWhere((art) => art.id == '044')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '044').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("J68")).value =
        hirayamaScores.firstWhere((art) => art.id == '044').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("J69")).value =
        hirayamaScores.firstWhere((art) => art.id == '044').scoreTheme;
    sheet1.cell(CellIndex.indexByString("J70")).value =
        hirayamaScores.firstWhere((art) => art.id == '044').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("J71")).value =
        hirayamaScores.firstWhere((art) => art.id == '044').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("J72")).value = (hirayamaScores
            .firstWhere((art) => art.id == '044')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '044').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '044').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("D76")).value =
        igarashiScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("D77")).value =
        igarashiScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet1.cell(CellIndex.indexByString("D78")).value =
        igarashiScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("D79")).value =
        igarashiScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("D80")).value = (igarashiScores
            .firstWhere((art) => art.id == '059')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '059').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '059').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("E76")).value =
        sugiuraScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("E77")).value =
        sugiuraScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet1.cell(CellIndex.indexByString("E78")).value =
        sugiuraScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("E79")).value =
        sugiuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("E80")).value = (sugiuraScores
            .firstWhere((art) => art.id == '059')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '059').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("F76")).value =
        takemuraScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("F77")).value =
        takemuraScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet1.cell(CellIndex.indexByString("F78")).value =
        takemuraScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("F79")).value =
        takemuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("F80")).value = (takemuraScores
            .firstWhere((art) => art.id == '059')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '059').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("G76")).value =
        uedaScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("G77")).value =
        uedaScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet1.cell(CellIndex.indexByString("G78")).value =
        uedaScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("G79")).value =
        uedaScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("G80")).value =
        (uedaScores.firstWhere((art) => art.id == '059').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '059').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '059').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '059').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("H76")).value =
        hoshiScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("H77")).value =
        hoshiScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet1.cell(CellIndex.indexByString("H78")).value =
        hoshiScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("H79")).value =
        hoshiScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("H80")).value = (hoshiScores
            .firstWhere((art) => art.id == '059')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '059').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '059').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("I76")).value =
        kimuraScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("I77")).value =
        kimuraScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet1.cell(CellIndex.indexByString("I78")).value =
        kimuraScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("I79")).value =
        kimuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("I80")).value = (kimuraScores
            .firstWhere((art) => art.id == '059')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '059').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("J76")).value =
        hirayamaScores.firstWhere((art) => art.id == '059').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("J77")).value =
        hirayamaScores.firstWhere((art) => art.id == '059').scoreTheme;
    sheet1.cell(CellIndex.indexByString("J78")).value =
        hirayamaScores.firstWhere((art) => art.id == '059').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("J79")).value =
        hirayamaScores.firstWhere((art) => art.id == '059').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("J80")).value = (hirayamaScores
            .firstWhere((art) => art.id == '059')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '059').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '059').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("D84")).value =
        igarashiScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("D85")).value =
        igarashiScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet1.cell(CellIndex.indexByString("D86")).value =
        igarashiScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("D87")).value =
        igarashiScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("D88")).value = (igarashiScores
            .firstWhere((art) => art.id == '077')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '077').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '077').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("E84")).value =
        sugiuraScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("E85")).value =
        sugiuraScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet1.cell(CellIndex.indexByString("E86")).value =
        sugiuraScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("E87")).value =
        sugiuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("E88")).value = (sugiuraScores
            .firstWhere((art) => art.id == '077')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '077').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("F84")).value =
        takemuraScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("F85")).value =
        takemuraScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet1.cell(CellIndex.indexByString("F86")).value =
        takemuraScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("F87")).value =
        takemuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("F88")).value = (takemuraScores
            .firstWhere((art) => art.id == '077')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '077').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("G84")).value =
        uedaScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("G85")).value =
        uedaScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet1.cell(CellIndex.indexByString("G86")).value =
        uedaScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("G87")).value =
        uedaScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("G88")).value =
        (uedaScores.firstWhere((art) => art.id == '077').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '077').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '077').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '077').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("H84")).value =
        hoshiScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("H85")).value =
        hoshiScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet1.cell(CellIndex.indexByString("H86")).value =
        hoshiScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("H87")).value =
        hoshiScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("H88")).value = (hoshiScores
            .firstWhere((art) => art.id == '077')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '077').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '077').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("I84")).value =
        kimuraScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("I85")).value =
        kimuraScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet1.cell(CellIndex.indexByString("I86")).value =
        kimuraScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("I87")).value =
        kimuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("I88")).value = (kimuraScores
            .firstWhere((art) => art.id == '077')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '077').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("J84")).value =
        hirayamaScores.firstWhere((art) => art.id == '077').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("J85")).value =
        hirayamaScores.firstWhere((art) => art.id == '077').scoreTheme;
    sheet1.cell(CellIndex.indexByString("J86")).value =
        hirayamaScores.firstWhere((art) => art.id == '077').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("J87")).value =
        hirayamaScores.firstWhere((art) => art.id == '077').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("J88")).value = (hirayamaScores
            .firstWhere((art) => art.id == '077')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '077').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '077').scoreOverallDesign);

    //sheet1 bottom traditional
    sheet1.cell(CellIndex.indexByString("Q12")).value =
        igarashiScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("Q13")).value =
        igarashiScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet1.cell(CellIndex.indexByString("Q14")).value =
        igarashiScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("Q15")).value =
        igarashiScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("Q16")).value = (igarashiScores
            .firstWhere((art) => art.id == '106')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '106').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '106').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("R12")).value =
        sugiuraScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("R13")).value =
        sugiuraScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet1.cell(CellIndex.indexByString("R14")).value =
        sugiuraScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("R15")).value =
        sugiuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("R16")).value = (sugiuraScores
            .firstWhere((art) => art.id == '106')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '106').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("S12")).value =
        takemuraScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("S13")).value =
        takemuraScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet1.cell(CellIndex.indexByString("S14")).value =
        takemuraScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("S15")).value =
        takemuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("S16")).value = (takemuraScores
            .firstWhere((art) => art.id == '106')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '106').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("T12")).value =
        uedaScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("T13")).value =
        uedaScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet1.cell(CellIndex.indexByString("T14")).value =
        uedaScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("T15")).value =
        uedaScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("T16")).value =
        (uedaScores.firstWhere((art) => art.id == '106').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '106').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '106').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '106').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("U12")).value =
        hoshiScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("U13")).value =
        hoshiScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet1.cell(CellIndex.indexByString("U14")).value =
        hoshiScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("U15")).value =
        hoshiScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("U16")).value = (hoshiScores
            .firstWhere((art) => art.id == '106')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '106').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '106').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("V12")).value =
        kimuraScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("V13")).value =
        kimuraScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet1.cell(CellIndex.indexByString("V14")).value =
        kimuraScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("V15")).value =
        kimuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("V16")).value = (kimuraScores
            .firstWhere((art) => art.id == '106')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '106').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("W12")).value =
        hirayamaScores.firstWhere((art) => art.id == '106').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("W13")).value =
        hirayamaScores.firstWhere((art) => art.id == '106').scoreTheme;
    sheet1.cell(CellIndex.indexByString("W14")).value =
        hirayamaScores.firstWhere((art) => art.id == '106').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("W15")).value =
        hirayamaScores.firstWhere((art) => art.id == '106').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("W16")).value = (hirayamaScores
            .firstWhere((art) => art.id == '106')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '106').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '106').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("Q20")).value =
        igarashiScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("Q21")).value =
        igarashiScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet1.cell(CellIndex.indexByString("Q22")).value =
        igarashiScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("Q23")).value =
        igarashiScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("Q24")).value = (igarashiScores
            .firstWhere((art) => art.id == '107')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '107').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '107').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("R20")).value =
        sugiuraScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("R21")).value =
        sugiuraScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet1.cell(CellIndex.indexByString("R22")).value =
        sugiuraScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("R23")).value =
        sugiuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("R24")).value = (sugiuraScores
            .firstWhere((art) => art.id == '107')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '107').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("S20")).value =
        takemuraScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("S21")).value =
        takemuraScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet1.cell(CellIndex.indexByString("S22")).value =
        takemuraScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("S23")).value =
        takemuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("S24")).value = (takemuraScores
            .firstWhere((art) => art.id == '107')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '107').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("T20")).value =
        uedaScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("T21")).value =
        uedaScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet1.cell(CellIndex.indexByString("T22")).value =
        uedaScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("T23")).value =
        uedaScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("T24")).value =
        (uedaScores.firstWhere((art) => art.id == '107').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '107').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '107').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '107').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("U20")).value =
        hoshiScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("U21")).value =
        hoshiScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet1.cell(CellIndex.indexByString("U22")).value =
        hoshiScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("U23")).value =
        hoshiScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("U24")).value = (hoshiScores
            .firstWhere((art) => art.id == '107')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '107').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '107').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("V20")).value =
        kimuraScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("V21")).value =
        kimuraScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet1.cell(CellIndex.indexByString("V22")).value =
        kimuraScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("V23")).value =
        kimuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("V24")).value = (kimuraScores
            .firstWhere((art) => art.id == '107')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '107').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("W20")).value =
        hirayamaScores.firstWhere((art) => art.id == '107').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("W21")).value =
        hirayamaScores.firstWhere((art) => art.id == '107').scoreTheme;
    sheet1.cell(CellIndex.indexByString("W22")).value =
        hirayamaScores.firstWhere((art) => art.id == '107').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("W23")).value =
        hirayamaScores.firstWhere((art) => art.id == '107').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("W24")).value = (hirayamaScores
            .firstWhere((art) => art.id == '107')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '107').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '107').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("Q28")).value =
        igarashiScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("Q29")).value =
        igarashiScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet1.cell(CellIndex.indexByString("Q30")).value =
        igarashiScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("Q31")).value =
        igarashiScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("Q32")).value = (igarashiScores
            .firstWhere((art) => art.id == '108')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '108').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '108').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("R28")).value =
        sugiuraScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("R29")).value =
        sugiuraScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet1.cell(CellIndex.indexByString("R30")).value =
        sugiuraScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("R31")).value =
        sugiuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("R32")).value = (sugiuraScores
            .firstWhere((art) => art.id == '108')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '108').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("S28")).value =
        takemuraScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("S29")).value =
        takemuraScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet1.cell(CellIndex.indexByString("S30")).value =
        takemuraScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("S31")).value =
        takemuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("S32")).value = (takemuraScores
            .firstWhere((art) => art.id == '108')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '108').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("T28")).value =
        uedaScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("T29")).value =
        uedaScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet1.cell(CellIndex.indexByString("T30")).value =
        uedaScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("T31")).value =
        uedaScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("T32")).value =
        (uedaScores.firstWhere((art) => art.id == '108').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '108').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '108').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '108').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("U28")).value =
        hoshiScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("U29")).value =
        hoshiScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet1.cell(CellIndex.indexByString("U30")).value =
        hoshiScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("U31")).value =
        hoshiScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("U32")).value = (hoshiScores
            .firstWhere((art) => art.id == '108')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '108').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '108').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("V28")).value =
        kimuraScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("V29")).value =
        kimuraScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet1.cell(CellIndex.indexByString("V30")).value =
        kimuraScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("V31")).value =
        kimuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("V32")).value = (kimuraScores
            .firstWhere((art) => art.id == '108')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '108').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("W28")).value =
        hirayamaScores.firstWhere((art) => art.id == '108').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("W29")).value =
        hirayamaScores.firstWhere((art) => art.id == '108').scoreTheme;
    sheet1.cell(CellIndex.indexByString("W30")).value =
        hirayamaScores.firstWhere((art) => art.id == '108').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("W31")).value =
        hirayamaScores.firstWhere((art) => art.id == '108').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("W32")).value = (hirayamaScores
            .firstWhere((art) => art.id == '108')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '108').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '108').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("Q36")).value =
        igarashiScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("Q37")).value =
        igarashiScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet1.cell(CellIndex.indexByString("Q38")).value =
        igarashiScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("Q39")).value =
        igarashiScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("Q40")).value = (igarashiScores
            .firstWhere((art) => art.id == '112')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '112').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '112').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("R36")).value =
        sugiuraScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("R37")).value =
        sugiuraScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet1.cell(CellIndex.indexByString("R38")).value =
        sugiuraScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("R39")).value =
        sugiuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("R40")).value = (sugiuraScores
            .firstWhere((art) => art.id == '112')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '112').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("S36")).value =
        takemuraScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("S37")).value =
        takemuraScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet1.cell(CellIndex.indexByString("S38")).value =
        takemuraScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("S39")).value =
        takemuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("S40")).value = (takemuraScores
            .firstWhere((art) => art.id == '112')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '112').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("T36")).value =
        uedaScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("T37")).value =
        uedaScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet1.cell(CellIndex.indexByString("T38")).value =
        uedaScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("T39")).value =
        uedaScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("T40")).value =
        (uedaScores.firstWhere((art) => art.id == '112').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '112').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '112').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '112').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("U36")).value =
        hoshiScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("U37")).value =
        hoshiScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet1.cell(CellIndex.indexByString("U38")).value =
        hoshiScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("U39")).value =
        hoshiScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("U40")).value = (hoshiScores
            .firstWhere((art) => art.id == '112')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '112').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '112').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("V36")).value =
        kimuraScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("V37")).value =
        kimuraScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet1.cell(CellIndex.indexByString("V38")).value =
        kimuraScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("V39")).value =
        kimuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("V40")).value = (kimuraScores
            .firstWhere((art) => art.id == '112')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '112').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("W36")).value =
        hirayamaScores.firstWhere((art) => art.id == '112').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("W37")).value =
        hirayamaScores.firstWhere((art) => art.id == '112').scoreTheme;
    sheet1.cell(CellIndex.indexByString("W38")).value =
        hirayamaScores.firstWhere((art) => art.id == '112').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("W39")).value =
        hirayamaScores.firstWhere((art) => art.id == '112').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("W40")).value = (hirayamaScores
            .firstWhere((art) => art.id == '112')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '112').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '112').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("Q44")).value =
        igarashiScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("Q45")).value =
        igarashiScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet1.cell(CellIndex.indexByString("Q46")).value =
        igarashiScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("Q47")).value =
        igarashiScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("Q48")).value = (igarashiScores
            .firstWhere((art) => art.id == '113')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '113').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '113').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("R44")).value =
        sugiuraScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("R45")).value =
        sugiuraScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet1.cell(CellIndex.indexByString("R46")).value =
        sugiuraScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("R47")).value =
        sugiuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("R48")).value = (sugiuraScores
            .firstWhere((art) => art.id == '113')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '113').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("S44")).value =
        takemuraScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("S45")).value =
        takemuraScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet1.cell(CellIndex.indexByString("S46")).value =
        takemuraScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("S47")).value =
        takemuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("S48")).value = (takemuraScores
            .firstWhere((art) => art.id == '113')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '113').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("T44")).value =
        uedaScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("T45")).value =
        uedaScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet1.cell(CellIndex.indexByString("T46")).value =
        uedaScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("T47")).value =
        uedaScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("T48")).value =
        (uedaScores.firstWhere((art) => art.id == '113').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '113').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '113').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '113').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("U44")).value =
        hoshiScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("U45")).value =
        hoshiScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet1.cell(CellIndex.indexByString("U46")).value =
        hoshiScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("U47")).value =
        hoshiScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("U48")).value = (hoshiScores
            .firstWhere((art) => art.id == '113')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '113').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '113').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("V44")).value =
        kimuraScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("V45")).value =
        kimuraScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet1.cell(CellIndex.indexByString("V46")).value =
        kimuraScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("V47")).value =
        kimuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("V48")).value = (kimuraScores
            .firstWhere((art) => art.id == '113')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '113').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("W44")).value =
        hirayamaScores.firstWhere((art) => art.id == '113').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("W45")).value =
        hirayamaScores.firstWhere((art) => art.id == '113').scoreTheme;
    sheet1.cell(CellIndex.indexByString("W46")).value =
        hirayamaScores.firstWhere((art) => art.id == '113').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("W47")).value =
        hirayamaScores.firstWhere((art) => art.id == '113').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("W48")).value = (hirayamaScores
            .firstWhere((art) => art.id == '113')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '113').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '113').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("Q52")).value =
        igarashiScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("Q53")).value =
        igarashiScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet1.cell(CellIndex.indexByString("Q54")).value =
        igarashiScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("Q55")).value =
        igarashiScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("Q56")).value = (igarashiScores
            .firstWhere((art) => art.id == '138')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '138').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '138').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("R52")).value =
        sugiuraScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("R53")).value =
        sugiuraScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet1.cell(CellIndex.indexByString("R54")).value =
        sugiuraScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("R55")).value =
        sugiuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("R56")).value = (sugiuraScores
            .firstWhere((art) => art.id == '138')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '138').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("S52")).value =
        takemuraScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("S53")).value =
        takemuraScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet1.cell(CellIndex.indexByString("S54")).value =
        takemuraScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("S55")).value =
        takemuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("S56")).value = (takemuraScores
            .firstWhere((art) => art.id == '138')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '138').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("T52")).value =
        uedaScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("T53")).value =
        uedaScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet1.cell(CellIndex.indexByString("T54")).value =
        uedaScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("T55")).value =
        uedaScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("T56")).value =
        (uedaScores.firstWhere((art) => art.id == '138').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '138').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '138').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '138').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("U52")).value =
        hoshiScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("U53")).value =
        hoshiScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet1.cell(CellIndex.indexByString("U54")).value =
        hoshiScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("U55")).value =
        hoshiScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("U56")).value = (hoshiScores
            .firstWhere((art) => art.id == '138')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '138').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '138').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("V52")).value =
        kimuraScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("V53")).value =
        kimuraScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet1.cell(CellIndex.indexByString("V54")).value =
        kimuraScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("V55")).value =
        kimuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("V56")).value = (kimuraScores
            .firstWhere((art) => art.id == '138')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '138').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("W52")).value =
        hirayamaScores.firstWhere((art) => art.id == '138').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("W53")).value =
        hirayamaScores.firstWhere((art) => art.id == '138').scoreTheme;
    sheet1.cell(CellIndex.indexByString("W54")).value =
        hirayamaScores.firstWhere((art) => art.id == '138').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("W55")).value =
        hirayamaScores.firstWhere((art) => art.id == '138').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("W56")).value = (hirayamaScores
            .firstWhere((art) => art.id == '138')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '138').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '138').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("Q60")).value =
        igarashiScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("Q61")).value =
        igarashiScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet1.cell(CellIndex.indexByString("Q62")).value =
        igarashiScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("Q63")).value =
        igarashiScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("Q64")).value = (igarashiScores
            .firstWhere((art) => art.id == '141')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '141').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '141').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("R60")).value =
        sugiuraScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("R61")).value =
        sugiuraScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet1.cell(CellIndex.indexByString("R62")).value =
        sugiuraScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("R63")).value =
        sugiuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("R64")).value = (sugiuraScores
            .firstWhere((art) => art.id == '141')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '141').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("S60")).value =
        takemuraScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("S61")).value =
        takemuraScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet1.cell(CellIndex.indexByString("S62")).value =
        takemuraScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("S63")).value =
        takemuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("S64")).value = (takemuraScores
            .firstWhere((art) => art.id == '141')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '141').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("T60")).value =
        uedaScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("T61")).value =
        uedaScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet1.cell(CellIndex.indexByString("T62")).value =
        uedaScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("T63")).value =
        uedaScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("T64")).value =
        (uedaScores.firstWhere((art) => art.id == '141').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '141').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '141').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '141').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("U60")).value =
        hoshiScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("U61")).value =
        hoshiScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet1.cell(CellIndex.indexByString("U62")).value =
        hoshiScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("U63")).value =
        hoshiScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("U64")).value = (hoshiScores
            .firstWhere((art) => art.id == '141')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '141').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '141').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("V60")).value =
        kimuraScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("V61")).value =
        kimuraScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet1.cell(CellIndex.indexByString("V62")).value =
        kimuraScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("V63")).value =
        kimuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("V64")).value = (kimuraScores
            .firstWhere((art) => art.id == '141')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '141').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("W60")).value =
        hirayamaScores.firstWhere((art) => art.id == '141').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("W61")).value =
        hirayamaScores.firstWhere((art) => art.id == '141').scoreTheme;
    sheet1.cell(CellIndex.indexByString("W62")).value =
        hirayamaScores.firstWhere((art) => art.id == '141').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("W63")).value =
        hirayamaScores.firstWhere((art) => art.id == '141').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("W64")).value = (hirayamaScores
            .firstWhere((art) => art.id == '141')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '141').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '141').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("Q68")).value =
        igarashiScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("Q69")).value =
        igarashiScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet1.cell(CellIndex.indexByString("Q70")).value =
        igarashiScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("Q71")).value =
        igarashiScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("Q72")).value = (igarashiScores
            .firstWhere((art) => art.id == '153')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '153').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '153').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("R68")).value =
        sugiuraScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("R69")).value =
        sugiuraScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet1.cell(CellIndex.indexByString("R70")).value =
        sugiuraScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("R71")).value =
        sugiuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("R72")).value = (sugiuraScores
            .firstWhere((art) => art.id == '153')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '153').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("S68")).value =
        takemuraScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("S69")).value =
        takemuraScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet1.cell(CellIndex.indexByString("S70")).value =
        takemuraScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("S71")).value =
        takemuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("S72")).value = (takemuraScores
            .firstWhere((art) => art.id == '153')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '153').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("T68")).value =
        uedaScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("T69")).value =
        uedaScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet1.cell(CellIndex.indexByString("T70")).value =
        uedaScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("T71")).value =
        uedaScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("T72")).value =
        (uedaScores.firstWhere((art) => art.id == '153').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '153').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '153').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '153').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("U68")).value =
        hoshiScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("U69")).value =
        hoshiScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet1.cell(CellIndex.indexByString("U70")).value =
        hoshiScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("U71")).value =
        hoshiScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("U72")).value = (hoshiScores
            .firstWhere((art) => art.id == '153')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '153').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '153').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("V68")).value =
        kimuraScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("V69")).value =
        kimuraScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet1.cell(CellIndex.indexByString("V70")).value =
        kimuraScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("V71")).value =
        kimuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("V72")).value = (kimuraScores
            .firstWhere((art) => art.id == '153')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '153').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("W68")).value =
        hirayamaScores.firstWhere((art) => art.id == '153').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("W69")).value =
        hirayamaScores.firstWhere((art) => art.id == '153').scoreTheme;
    sheet1.cell(CellIndex.indexByString("W70")).value =
        hirayamaScores.firstWhere((art) => art.id == '153').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("W71")).value =
        hirayamaScores.firstWhere((art) => art.id == '153').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("W72")).value = (hirayamaScores
            .firstWhere((art) => art.id == '153')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '153').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '153').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("Q76")).value =
        igarashiScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("Q77")).value =
        igarashiScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet1.cell(CellIndex.indexByString("Q78")).value =
        igarashiScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("Q79")).value =
        igarashiScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("Q80")).value = (igarashiScores
            .firstWhere((art) => art.id == '012')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '012').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '012').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("R76")).value =
        sugiuraScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("R77")).value =
        sugiuraScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet1.cell(CellIndex.indexByString("R78")).value =
        sugiuraScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("R79")).value =
        sugiuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("R80")).value = (sugiuraScores
            .firstWhere((art) => art.id == '012')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '012').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("S76")).value =
        takemuraScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("S77")).value =
        takemuraScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet1.cell(CellIndex.indexByString("S78")).value =
        takemuraScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("S79")).value =
        takemuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("S80")).value = (takemuraScores
            .firstWhere((art) => art.id == '012')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '012').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("T76")).value =
        uedaScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("T77")).value =
        uedaScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet1.cell(CellIndex.indexByString("T78")).value =
        uedaScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("T79")).value =
        uedaScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("T80")).value =
        (uedaScores.firstWhere((art) => art.id == '012').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '012').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '012').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '012').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("U76")).value =
        hoshiScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("U77")).value =
        hoshiScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet1.cell(CellIndex.indexByString("U78")).value =
        hoshiScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("U79")).value =
        hoshiScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("U80")).value = (hoshiScores
            .firstWhere((art) => art.id == '012')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '012').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '012').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("V76")).value =
        kimuraScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("V77")).value =
        kimuraScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet1.cell(CellIndex.indexByString("V78")).value =
        kimuraScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("V79")).value =
        kimuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("V80")).value = (kimuraScores
            .firstWhere((art) => art.id == '012')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '012').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("W76")).value =
        hirayamaScores.firstWhere((art) => art.id == '012').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("W77")).value =
        hirayamaScores.firstWhere((art) => art.id == '012').scoreTheme;
    sheet1.cell(CellIndex.indexByString("W78")).value =
        hirayamaScores.firstWhere((art) => art.id == '012').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("W79")).value =
        hirayamaScores.firstWhere((art) => art.id == '012').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("W80")).value = (hirayamaScores
            .firstWhere((art) => art.id == '012')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '012').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '012').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("Q84")).value =
        igarashiScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("Q85")).value =
        igarashiScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet1.cell(CellIndex.indexByString("Q86")).value =
        igarashiScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("Q87")).value =
        igarashiScores.firstWhere((art) => art.id == '090').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("Q88")).value = (igarashiScores
            .firstWhere((art) => art.id == '090')
            .scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '090').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '090').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("R84")).value =
        sugiuraScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("R85")).value =
        sugiuraScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet1.cell(CellIndex.indexByString("R86")).value =
        sugiuraScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("R87")).value =
        sugiuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("R88")).value = (sugiuraScores
            .firstWhere((art) => art.id == '090')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '090').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("S84")).value =
        takemuraScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("S85")).value =
        takemuraScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet1.cell(CellIndex.indexByString("S86")).value =
        takemuraScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("S87")).value =
        takemuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("S88")).value = (takemuraScores
            .firstWhere((art) => art.id == '090')
            .scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '090').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("T84")).value =
        uedaScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("T85")).value =
        uedaScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet1.cell(CellIndex.indexByString("T86")).value =
        uedaScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("T87")).value =
        uedaScores.firstWhere((art) => art.id == '090').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("T88")).value =
        (uedaScores.firstWhere((art) => art.id == '090').scoreOriginality +
            uedaScores.firstWhere((art) => art.id == '090').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '090').scoreCharDesign +
            uedaScores.firstWhere((art) => art.id == '090').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("U84")).value =
        hoshiScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("U85")).value =
        hoshiScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet1.cell(CellIndex.indexByString("U86")).value =
        hoshiScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("U87")).value =
        hoshiScores.firstWhere((art) => art.id == '090').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("U88")).value = (hoshiScores
            .firstWhere((art) => art.id == '090')
            .scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '090').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '090').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("V84")).value =
        kimuraScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("V85")).value =
        kimuraScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet1.cell(CellIndex.indexByString("V86")).value =
        kimuraScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("V87")).value =
        kimuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("V88")).value = (kimuraScores
            .firstWhere((art) => art.id == '090')
            .scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '090').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("W84")).value =
        hirayamaScores.firstWhere((art) => art.id == '090').scoreOriginality;
    sheet1.cell(CellIndex.indexByString("W85")).value =
        hirayamaScores.firstWhere((art) => art.id == '090').scoreTheme;
    sheet1.cell(CellIndex.indexByString("W86")).value =
        hirayamaScores.firstWhere((art) => art.id == '090').scoreCharDesign;
    sheet1.cell(CellIndex.indexByString("W87")).value =
        hirayamaScores.firstWhere((art) => art.id == '090').scoreOverallDesign;
    sheet1.cell(CellIndex.indexByString("W88")).value = (hirayamaScores
            .firstWhere((art) => art.id == '090')
            .scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '090').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '090').scoreOverallDesign);

    //sheet1 top digital
    sheet1.cell(CellIndex.indexByString("D4")).value = (igarashiScores
            .firstWhere((art) => art.id == '109')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '109').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '109').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '109').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '109').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '109').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '109').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("D5")).value =
        (igarashiScores.firstWhere((art) => art.id == '109').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '109').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '109').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '109').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '109').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '109').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '109').scoreTheme);
    sheet1.cell(CellIndex.indexByString("D6")).value = (igarashiScores
            .firstWhere((art) => art.id == '109')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '109').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("D7")).value = (igarashiScores
            .firstWhere((art) => art.id == '109')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '109').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '109').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '109').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("D8")).value = (igarashiScores
            .firstWhere((art) => art.id == '109')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '109').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '109').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '109').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '109').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '109').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '109').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '109').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '109').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '109').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '109').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '109').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '109').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '109').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '109').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '109').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '109').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '109').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '109').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '109').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("E4")).value = (igarashiScores
            .firstWhere((art) => art.id == '115')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '115').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '115').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '115').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '115').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '115').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '115').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("E5")).value =
        (igarashiScores.firstWhere((art) => art.id == '115').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '115').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '115').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '115').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '115').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '115').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '115').scoreTheme);
    sheet1.cell(CellIndex.indexByString("E6")).value = (igarashiScores
            .firstWhere((art) => art.id == '115')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '115').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("E7")).value = (igarashiScores
            .firstWhere((art) => art.id == '115')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '115').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '115').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '115').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("E8")).value = (igarashiScores
            .firstWhere((art) => art.id == '115')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '115').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '115').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '115').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '115').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '115').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '115').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '115').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '115').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '115').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '115').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '115').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '115').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '115').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '115').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '115').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '115').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '115').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '115').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '115').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("F4")).value = (igarashiScores
            .firstWhere((art) => art.id == '125')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '125').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '125').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '125').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '125').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '125').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '125').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("F5")).value =
        (igarashiScores.firstWhere((art) => art.id == '125').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '125').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '125').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '125').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '125').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '125').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '125').scoreTheme);
    sheet1.cell(CellIndex.indexByString("F6")).value = (igarashiScores
            .firstWhere((art) => art.id == '125')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '125').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("F7")).value = (igarashiScores
            .firstWhere((art) => art.id == '125')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '125').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '125').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '125').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("F8")).value = (igarashiScores
            .firstWhere((art) => art.id == '125')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '125').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '125').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '125').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '125').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '125').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '125').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '125').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '125').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '125').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '125').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '125').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '125').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '125').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '125').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '125').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '125').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '125').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '125').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '125').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("G4")).value = (igarashiScores
            .firstWhere((art) => art.id == '126')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '126').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '126').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '126').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '126').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '126').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '126').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("G5")).value =
        (igarashiScores.firstWhere((art) => art.id == '126').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '126').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '126').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '126').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '126').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '126').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '126').scoreTheme);
    sheet1.cell(CellIndex.indexByString("G6")).value = (igarashiScores
            .firstWhere((art) => art.id == '126')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '126').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("G7")).value = (igarashiScores
            .firstWhere((art) => art.id == '126')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '126').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '126').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '126').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("G8")).value = (igarashiScores
            .firstWhere((art) => art.id == '126')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '126').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '126').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '126').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '126').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '126').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '126').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '126').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '126').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '126').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '126').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '126').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '126').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '126').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '126').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '126').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '126').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '126').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '126').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '126').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("H4")).value = (igarashiScores
            .firstWhere((art) => art.id == '130')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '130').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '130').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '130').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '130').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '130').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '130').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("H5")).value =
        (igarashiScores.firstWhere((art) => art.id == '130').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '130').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '130').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '130').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '130').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '130').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '130').scoreTheme);
    sheet1.cell(CellIndex.indexByString("H6")).value = (igarashiScores
            .firstWhere((art) => art.id == '130')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '130').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("H7")).value = (igarashiScores
            .firstWhere((art) => art.id == '130')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '130').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '130').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '130').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("H8")).value = (igarashiScores
            .firstWhere((art) => art.id == '130')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '130').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '130').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '130').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '130').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '130').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '130').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '130').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '130').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '130').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '130').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '130').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '130').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '130').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '130').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '130').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '130').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '130').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '130').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '130').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("I4")).value = (igarashiScores
            .firstWhere((art) => art.id == '137')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '137').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '137').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '137').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '137').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '137').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '137').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("I5")).value =
        (igarashiScores.firstWhere((art) => art.id == '137').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '137').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '137').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '137').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '137').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '137').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '137').scoreTheme);
    sheet1.cell(CellIndex.indexByString("I6")).value = (igarashiScores
            .firstWhere((art) => art.id == '137')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '137').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("I7")).value = (igarashiScores
            .firstWhere((art) => art.id == '137')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '137').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '137').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '137').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("I8")).value = (igarashiScores
            .firstWhere((art) => art.id == '137')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '137').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '137').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '137').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '137').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '137').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '137').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '137').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '137').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '137').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '137').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '137').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '137').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '137').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '137').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '137').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '137').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '137').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '137').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '137').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("J4")).value = (igarashiScores
            .firstWhere((art) => art.id == '143')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '143').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '143').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '143').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '143').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '143').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '143').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("J5")).value =
        (igarashiScores.firstWhere((art) => art.id == '143').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '143').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '143').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '143').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '143').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '143').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '143').scoreTheme);
    sheet1.cell(CellIndex.indexByString("J6")).value = (igarashiScores
            .firstWhere((art) => art.id == '143')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '143').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("J7")).value = (igarashiScores
            .firstWhere((art) => art.id == '143')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '143').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '143').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '143').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("J8")).value = (igarashiScores
            .firstWhere((art) => art.id == '143')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '143').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '143').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '143').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '143').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '143').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '143').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '143').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '143').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '143').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '143').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '143').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '143').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '143').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '143').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '143').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '143').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '143').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '143').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '143').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("K4")).value = (igarashiScores
            .firstWhere((art) => art.id == '044')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '044').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '044').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '044').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '044').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '044').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '044').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("K5")).value =
        (igarashiScores.firstWhere((art) => art.id == '044').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '044').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '044').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '044').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '044').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '044').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '044').scoreTheme);
    sheet1.cell(CellIndex.indexByString("K6")).value = (igarashiScores
            .firstWhere((art) => art.id == '044')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '044').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("K7")).value = (igarashiScores
            .firstWhere((art) => art.id == '044')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '044').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '044').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '044').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("K8")).value = (igarashiScores
            .firstWhere((art) => art.id == '044')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '044').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '044').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '044').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '044').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '044').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '044').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '044').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '044').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '044').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '044').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '044').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '044').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '044').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '044').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '044').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '044').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '044').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '044').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '044').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("L4")).value = (igarashiScores
            .firstWhere((art) => art.id == '059')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '059').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '059').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '059').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '059').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '059').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '059').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("L5")).value =
        (igarashiScores.firstWhere((art) => art.id == '059').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '059').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '059').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '059').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '059').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '059').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '059').scoreTheme);
    sheet1.cell(CellIndex.indexByString("L6")).value = (igarashiScores
            .firstWhere((art) => art.id == '059')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '059').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("L7")).value = (igarashiScores
            .firstWhere((art) => art.id == '059')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '059').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '059').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '059').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("L8")).value = (igarashiScores
            .firstWhere((art) => art.id == '059')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '059').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '059').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '059').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '059').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '059').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '059').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '059').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '059').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '059').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '059').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '059').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '059').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '059').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '059').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '059').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '059').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '059').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '059').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '059').scoreOverallDesign);

    sheet1.cell(CellIndex.indexByString("M4")).value = (igarashiScores
            .firstWhere((art) => art.id == '077')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '077').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '077').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '077').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '077').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '077').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '077').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("M5")).value =
        (igarashiScores.firstWhere((art) => art.id == '077').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '077').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '077').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '077').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '077').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '077').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '077').scoreTheme);
    sheet1.cell(CellIndex.indexByString("M6")).value = (igarashiScores
            .firstWhere((art) => art.id == '077')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '077').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("M7")).value = (igarashiScores
            .firstWhere((art) => art.id == '077')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '077').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '077').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '077').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("M8")).value = (igarashiScores
            .firstWhere((art) => art.id == '077')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '077').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '077').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '077').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '077').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '077').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '077').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '077').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '077').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '077').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '077').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '077').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '077').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '077').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '077').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '077').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '077').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '077').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '077').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '077').scoreOverallDesign);

        sheet1.cell(CellIndex.indexByString("Q4")).value = (igarashiScores
            .firstWhere((art) => art.id == '106')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '106').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '106').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '106').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '106').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '106').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '106').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("Q5")).value =
        (igarashiScores.firstWhere((art) => art.id == '106').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '106').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '106').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '106').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '106').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '106').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '106').scoreTheme);
    sheet1.cell(CellIndex.indexByString("Q6")).value = (igarashiScores
            .firstWhere((art) => art.id == '106')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '106').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("Q7")).value = (igarashiScores
            .firstWhere((art) => art.id == '106')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '106').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '106').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '106').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("Q8")).value = (igarashiScores
            .firstWhere((art) => art.id == '106')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '106').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '106').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '106').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '106').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '106').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '106').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '106').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '106').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '106').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '106').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '106').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '106').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '106').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '106').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '106').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '106').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '106').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '106').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '106').scoreOverallDesign);

        sheet1.cell(CellIndex.indexByString("R4")).value = (igarashiScores
            .firstWhere((art) => art.id == '107')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '107').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '107').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '107').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '107').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '107').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '107').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("R5")).value =
        (igarashiScores.firstWhere((art) => art.id == '107').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '107').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '107').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '107').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '107').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '107').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '107').scoreTheme);
    sheet1.cell(CellIndex.indexByString("R6")).value = (igarashiScores
            .firstWhere((art) => art.id == '107')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '107').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("R7")).value = (igarashiScores
            .firstWhere((art) => art.id == '107')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '107').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '107').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '107').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("R8")).value = (igarashiScores
            .firstWhere((art) => art.id == '107')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '107').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '107').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '107').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '107').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '107').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '107').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '107').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '107').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '107').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '107').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '107').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '107').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '107').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '107').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '107').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '107').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '107').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '107').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '107').scoreOverallDesign);

        sheet1.cell(CellIndex.indexByString("S4")).value = (igarashiScores
            .firstWhere((art) => art.id == '108')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '108').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '108').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '108').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '108').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '108').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '108').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("S5")).value =
        (igarashiScores.firstWhere((art) => art.id == '108').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '108').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '108').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '108').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '108').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '108').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '108').scoreTheme);
    sheet1.cell(CellIndex.indexByString("S6")).value = (igarashiScores
            .firstWhere((art) => art.id == '108')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '108').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("S7")).value = (igarashiScores
            .firstWhere((art) => art.id == '108')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '108').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '108').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '108').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("S8")).value = (igarashiScores
            .firstWhere((art) => art.id == '108')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '108').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '108').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '108').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '108').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '108').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '108').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '108').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '108').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '108').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '108').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '108').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '108').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '108').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '108').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '108').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '108').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '108').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '108').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '108').scoreOverallDesign);

        sheet1.cell(CellIndex.indexByString("T4")).value = (igarashiScores
            .firstWhere((art) => art.id == '112')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '112').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '112').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '112').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '112').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '112').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '112').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("T5")).value =
        (igarashiScores.firstWhere((art) => art.id == '112').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '112').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '112').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '112').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '112').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '112').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '112').scoreTheme);
    sheet1.cell(CellIndex.indexByString("T6")).value = (igarashiScores
            .firstWhere((art) => art.id == '112')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '112').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("T7")).value = (igarashiScores
            .firstWhere((art) => art.id == '112')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '112').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '112').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '112').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("T8")).value = (igarashiScores
            .firstWhere((art) => art.id == '112')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '112').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '112').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '112').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '112').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '112').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '112').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '112').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '112').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '112').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '112').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '112').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '112').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '112').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '112').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '112').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '112').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '112').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '112').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '112').scoreOverallDesign);

        sheet1.cell(CellIndex.indexByString("U4")).value = (igarashiScores
            .firstWhere((art) => art.id == '113')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '113').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '113').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '113').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '113').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '113').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '113').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("U5")).value =
        (igarashiScores.firstWhere((art) => art.id == '113').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '113').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '113').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '113').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '113').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '113').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '113').scoreTheme);
    sheet1.cell(CellIndex.indexByString("U6")).value = (igarashiScores
            .firstWhere((art) => art.id == '113')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '113').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("U7")).value = (igarashiScores
            .firstWhere((art) => art.id == '113')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '113').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '113').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '113').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("U8")).value = (igarashiScores
            .firstWhere((art) => art.id == '113')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '113').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '113').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '113').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '113').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '113').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '113').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '113').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '113').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '113').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '113').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '113').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '113').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '113').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '113').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '113').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '113').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '113').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '113').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '113').scoreOverallDesign);

        sheet1.cell(CellIndex.indexByString("V4")).value = (igarashiScores
            .firstWhere((art) => art.id == '138')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '138').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '138').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '138').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '138').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '138').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '138').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("V5")).value =
        (igarashiScores.firstWhere((art) => art.id == '138').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '138').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '138').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '138').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '138').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '138').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '138').scoreTheme);
    sheet1.cell(CellIndex.indexByString("V6")).value = (igarashiScores
            .firstWhere((art) => art.id == '138')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '138').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("V7")).value = (igarashiScores
            .firstWhere((art) => art.id == '138')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '138').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '138').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '138').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("V8")).value = (igarashiScores
            .firstWhere((art) => art.id == '138')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '138').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '138').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '138').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '138').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '138').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '138').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '138').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '138').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '138').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '138').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '138').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '138').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '138').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '138').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '138').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '138').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '138').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '138').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '138').scoreOverallDesign);

        sheet1.cell(CellIndex.indexByString("W4")).value = (igarashiScores
            .firstWhere((art) => art.id == '141')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '141').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '141').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '141').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '141').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '141').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '141').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("W5")).value =
        (igarashiScores.firstWhere((art) => art.id == '141').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '141').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '141').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '141').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '141').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '141').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '141').scoreTheme);
    sheet1.cell(CellIndex.indexByString("W6")).value = (igarashiScores
            .firstWhere((art) => art.id == '141')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '141').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("W7")).value = (igarashiScores
            .firstWhere((art) => art.id == '141')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '141').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '141').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '141').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("W8")).value = (igarashiScores
            .firstWhere((art) => art.id == '141')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '141').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '141').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '141').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '141').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '141').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '141').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '141').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '141').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '141').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '141').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '141').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '141').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '141').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '141').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '141').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '141').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '141').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '141').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '141').scoreOverallDesign);

        sheet1.cell(CellIndex.indexByString("X4")).value = (igarashiScores
            .firstWhere((art) => art.id == '153')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '153').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '153').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '153').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '153').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '153').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '153').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("X5")).value =
        (igarashiScores.firstWhere((art) => art.id == '153').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '153').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '153').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '153').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '153').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '153').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '153').scoreTheme);
    sheet1.cell(CellIndex.indexByString("X6")).value = (igarashiScores
            .firstWhere((art) => art.id == '153')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '153').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("X7")).value = (igarashiScores
            .firstWhere((art) => art.id == '153')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '153').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '153').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '153').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("X8")).value = (igarashiScores
            .firstWhere((art) => art.id == '153')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '153').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '153').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '153').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '153').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '153').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '153').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '153').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '153').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '153').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '153').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '153').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '153').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '153').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '153').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '153').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '153').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '153').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '153').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '153').scoreOverallDesign);

        sheet1.cell(CellIndex.indexByString("Y4")).value = (igarashiScores
            .firstWhere((art) => art.id == '012')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '012').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '012').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '012').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '012').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '012').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '012').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("Y5")).value =
        (igarashiScores.firstWhere((art) => art.id == '012').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '012').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '012').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '012').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '012').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '012').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '012').scoreTheme);
    sheet1.cell(CellIndex.indexByString("Y6")).value = (igarashiScores
            .firstWhere((art) => art.id == '012')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '012').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("Y7")).value = (igarashiScores
            .firstWhere((art) => art.id == '012')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '012').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '012').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '012').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("Y8")).value = (igarashiScores
            .firstWhere((art) => art.id == '012')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '012').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '012').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '012').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '012').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '012').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '012').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '012').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '012').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '012').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '012').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '012').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '012').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '012').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '012').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '012').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '012').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '012').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '012').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '012').scoreOverallDesign);

        sheet1.cell(CellIndex.indexByString("Z4")).value = (igarashiScores
            .firstWhere((art) => art.id == '090')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '090').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '090').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '090').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '090').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '090').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '090').scoreOriginality);
    sheet1.cell(CellIndex.indexByString("Z5")).value =
        (igarashiScores.firstWhere((art) => art.id == '090').scoreTheme +
            sugiuraScores.firstWhere((art) => art.id == '090').scoreTheme +
            takemuraScores.firstWhere((art) => art.id == '090').scoreTheme +
            uedaScores.firstWhere((art) => art.id == '090').scoreTheme +
            hoshiScores.firstWhere((art) => art.id == '090').scoreTheme +
            kimuraScores.firstWhere((art) => art.id == '090').scoreTheme +
            hirayamaScores.firstWhere((art) => art.id == '090').scoreTheme);
    sheet1.cell(CellIndex.indexByString("Z6")).value = (igarashiScores
            .firstWhere((art) => art.id == '090')
            .scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '090').scoreCharDesign);
    sheet1.cell(CellIndex.indexByString("Z7")).value = (igarashiScores
            .firstWhere((art) => art.id == '090')
            .scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '090').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '090').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '090').scoreOverallDesign);
    sheet1.cell(CellIndex.indexByString("Z8")).value = (igarashiScores
            .firstWhere((art) => art.id == '090')
            .scoreOriginality +
        sugiuraScores.firstWhere((art) => art.id == '090').scoreOriginality +
        takemuraScores.firstWhere((art) => art.id == '090').scoreOriginality +
        uedaScores.firstWhere((art) => art.id == '090').scoreOriginality +
        hoshiScores.firstWhere((art) => art.id == '090').scoreOriginality +
        kimuraScores.firstWhere((art) => art.id == '090').scoreOriginality +
        hirayamaScores.firstWhere((art) => art.id == '090').scoreOriginality +
        igarashiScores.firstWhere((art) => art.id == '090').scoreTheme +
        sugiuraScores.firstWhere((art) => art.id == '090').scoreTheme +
        takemuraScores.firstWhere((art) => art.id == '090').scoreTheme +
        uedaScores.firstWhere((art) => art.id == '090').scoreTheme +
        hoshiScores.firstWhere((art) => art.id == '090').scoreTheme +
        kimuraScores.firstWhere((art) => art.id == '090').scoreTheme +
        hirayamaScores.firstWhere((art) => art.id == '090').scoreTheme +
        igarashiScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        sugiuraScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        takemuraScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        uedaScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        hoshiScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        kimuraScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        hirayamaScores.firstWhere((art) => art.id == '090').scoreCharDesign +
        igarashiScores.firstWhere((art) => art.id == '090').scoreOverallDesign +
        sugiuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign +
        takemuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign +
        uedaScores.firstWhere((art) => art.id == '090').scoreOverallDesign +
        hoshiScores.firstWhere((art) => art.id == '090').scoreOverallDesign +
        kimuraScores.firstWhere((art) => art.id == '090').scoreOverallDesign +
        hirayamaScores.firstWhere((art) => art.id == '090').scoreOverallDesign);

    //dateCreated
    var timeCreated = DateFormat('dd/MM/yyyy hh:mm').format(DateTime.now());
    sheet1.cell(CellIndex.indexByString("W1")).value = timeCreated;
    sheet2.cell(CellIndex.indexByString("W2")).value = timeCreated;

    var fileBytes = excel.save(fileName: "Ekibou_Report.xlsx");
  }
}
