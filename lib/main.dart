// @dart=2.9
import 'package:flutter/material.dart';
import 'package:one_glance/pages/traditional_page.dart';
import 'package:one_glance/providers/scores.dart';
import 'package:provider/provider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';

import './firebase_options.dart';
import './providers/art.dart';
import './providers/arts.dart';
import './providers/auth.dart';
import './providers/scores.dart';
import './providers/excel.dart';
import './pages/digital_page.dart';
import './pages/traditional_page.dart';
import './pages/art_detail_page.dart';
import './pages/upload_page.dart';
import './pages/auth_screen.dart';
import './widgets/art_item.dart';
import './widgets/title_text_button.dart';
import './widgets/splash_screen.dart';

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
        ChangeNotifierProvider.value(value: Auth()),
        ChangeNotifierProvider.value(value: Art()),
        ChangeNotifierProxyProvider<Auth, Arts>(
          update: (ctx, auth, previousArt) => Arts(
            auth.token,
            auth.userId,
            previousArt == null ? [] : previousArt.items,
          ),
        ),
        ChangeNotifierProxyProvider<Auth, Scores>(
          update: (ctx, auth, previousScore) => Scores(
            auth.token,
            auth.userId,
            previousScore == null ? [] : previousScore.scores,
          ),
        ),
        ChangeNotifierProvider.value(value: ExcelItem()),
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          title: 'Ekibou',
          theme: appTheme.themeData,
          home: auth.isAuth
              ? DigitalPage()
              : FutureBuilder(
                  future: auth.tryAutoLogin(),
                  builder: (ctx, authResultSnapshot) =>
                      authResultSnapshot.connectionState ==
                              ConnectionState.waiting
                          ? SplashScreen()
                          : AuthScreen(),
                ),
          routes: {
            DigitalPage.routeName: (ctx) => DigitalPage(),
            TraditionalPage.routeName: (ctx) => TraditionalPage(),
            ArtDetailPage.routeName: (ctx) => ArtDetailPage(),
            UploadPage.routeName: (ctx) => UploadPage(),
            AuthScreen.routeName: (ctx) => AuthScreen(),
          },
        ),
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
