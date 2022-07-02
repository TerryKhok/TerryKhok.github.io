import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';

import '../firebase_options.dart';
import '../providers/art.dart';
import '../providers/arts.dart';
import '../providers/auth.dart';
import './art_detail_page.dart';
import './upload_page.dart';
import './digital_page.dart';
import '../widgets/art_item.dart';
import '../widgets/title_text_button.dart';
import '../widgets/appbar.dart';
import '../pages/auth_screen.dart';
import '../widgets/splash_screen.dart';

class TraditionalPage extends StatefulWidget {
  static const routeName = "/traditional-page";

  @override
  State<TraditionalPage> createState() => _TraditionalPageState();
}

class _TraditionalPageState extends State<TraditionalPage> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<Arts>(context, listen: false)
          .fetchAndSetProduct(context)
          .then((_) {
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
    final traditionalArts = artData.traditionalItems;

    return Consumer<Auth>(
      builder: (ctx, auth, _) => auth.isAuth
          ? Scaffold(
              appBar: AppBarItem(),
              body: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 500,
                    childAspectRatio: 16 / 9,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0),
                itemCount: traditionalArts.length,
                itemBuilder: (BuildContext ctx, i) {
                  return ChangeNotifierProvider.value(
                    value: traditionalArts[i],
                    child: Container(
                      alignment: Alignment.center,
                      child: ArtItem(),
                    ),
                  );
                },
              ),
            )
          : FutureBuilder(
              future: auth.tryAutoLogin(),
              builder: (ctx, authResultSnapshot) =>
                  authResultSnapshot.connectionState == ConnectionState.waiting
                      ? SplashScreen()
                      : AuthScreen(),
            ),
    );
  }
}
