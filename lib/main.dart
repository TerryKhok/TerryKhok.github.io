// @dart=2.9
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';

import './firebase_options.dart';
import './providers/art.dart';
import './providers/arts.dart';
import './pages/art_detail_page.dart';
import './pages/upload_page.dart';
import './widgets/art_item.dart';
import './widgets/title_text_button.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  AppTheme appTheme = AppTheme(isDark: false)
    ..accent1 = const Color(0xff1e2038)
    ..bg1 = const Color(0xfffff8e7);
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: appTheme),
        ChangeNotifierProvider.value(value: Arts()),
        ChangeNotifierProvider.value(value: Art())
      ],
      child: MaterialApp(
        title: 'Ekibou',
        theme: appTheme.themeData,
        home: HomePage(),
        routes: {
          HomePage.routeName: (ctx) => HomePage(),
          ArtDetailPage.routeName: (ctx) => ArtDetailPage(),
          UploadPage.routeName: (ctx) => UploadPage(),
        },
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  static const routeName = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<Arts>(context).fetchAndSetProduct().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  Widget build(BuildContext context) {
    final artData = Provider.of<Arts>(context);
    final arts = artData.items;
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(2),
          child: Image.asset(
            'assets/images/Logo_w_small.png',
            height: 50,
            width: 50,
          ),
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/images/Ekibou_Logo_small.png',
              height: 50,
            ),
            const SizedBox(width: 55),
            const TitleTextButton(HomePage.routeName, 'HOME'),
            const SizedBox(width: 55),
            const TitleTextButton(UploadPage.routeName, 'UPLOAD'),
            Expanded(child: Container()),
            const TitleTextButton(HomePage.routeName, 'LOG IN'),
            const SizedBox(width: 20),
          ],
        ),
      ),
      body: Container(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 16 / 9,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0),
            itemCount: arts.length,
            itemBuilder: (BuildContext ctx, i) {
              return ChangeNotifierProvider.value(
                value: arts[i],
                child: Container(
                  alignment: Alignment.center,
                  child: ArtItem(),
                ),
              );
            }),
      ),
    );
  }
}

class AppTheme {
  Color bg1;
  Color accent1;
  bool isDark;

  /// Default constructor
  AppTheme({this.isDark});

  ThemeData get themeData {
    // TextTheme:
    const TextTheme(
        headline6: TextStyle(
            fontFamily: 'Proxima', fontSize: 30, color: Colors.white));

    /// Create a TextTheme and ColorScheme, that we can use to generate ThemeData
    TextTheme txtTheme =
        (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
    Color txtColor = txtTheme.bodyText1.color as Color;
    ColorScheme colorScheme = ColorScheme(
        // Decide how you want to apply your own custom them, to the MaterialApp
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: accent1,
        primaryVariant: accent1,
        secondary: accent1,
        secondaryVariant: accent1,
        background: bg1,
        surface: bg1,
        onBackground: txtColor,
        onSurface: txtColor,
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.red.shade400);

    /// Now that we have ColorScheme and TextTheme, we can create the ThemeData
    var theme = ThemeData.from(textTheme: txtTheme, colorScheme: colorScheme)
        // We can also add on some extra properties that ColorScheme seems to miss
        .copyWith(
            buttonColor: accent1,
            cursorColor: accent1,
            highlightColor: accent1,
            toggleableActiveColor: accent1);

    /// Return the themeData which MaterialApp can now use
    return theme;
  }
}
