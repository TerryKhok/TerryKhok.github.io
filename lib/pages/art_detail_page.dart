import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import './art_detail_page.dart';
import './upload_page.dart';
import '../providers/arts.dart';
import '../widgets/title_text_button.dart';
import '../widgets/scoring_item.dart';

class ArtDetailPage extends StatelessWidget {
  const ArtDetailPage({Key? key}) : super(key: key);
  static const routeName = '/art-detail-page';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    final loadedArt = Provider.of<Arts>(
      context,
      listen: false,
    ).findById(id);
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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 5),
              Container(
                height: 900,
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Image.network(
                      loadedArt.imageURL,
                      fit: BoxFit.contain,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.zoom_out_map_rounded),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    loadedArt.id,
                    style: TextStyle(fontSize: 28),
                  ),
                  SizedBox(width: 5),
                  Text(
                    loadedArt.title,
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
              Text(
                loadedArt.description,
                style: TextStyle(fontSize: 16),
              ),
              ScoringItem(),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 50,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Previous & Save'),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size.fromWidth(200),
                        ),
                      ),
                    ),
                    SizedBox(width: 100),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Save'),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size.fromWidth(100),
                        ),
                      ),
                    ),
                    SizedBox(width: 100),
                    ElevatedButton(
                      onPressed: () {},
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
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
