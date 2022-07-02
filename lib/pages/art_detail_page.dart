import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';
import './art_detail_page.dart';
import './digital_page.dart';
import './upload_page.dart';
import './traditional_page.dart';
import '../providers/arts.dart';
import '../widgets/title_text_button.dart';
import '../widgets/scoring_item.dart';
import '../widgets/appbar.dart';

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

    final Uri _pngUrl = Uri.parse(loadedArt.imageURL);
    final Uri _psdUrl = Uri.parse(loadedArt.psdURL);

    return Scaffold(
      appBar: AppBarItem(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(5, 3, 5, 10),
                height: 900,
                child: Image.network(
                  loadedArt.imageURL,
                  fit: BoxFit.contain,
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _launchUrl(_pngUrl);
                    },
                    child: Text('Download PNG'),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size.fromWidth(180),
                      ),
                    ),
                  ),
                  SizedBox(width: 100),
                  loadedArt.isDigital == 1
                      ? ElevatedButton(
                          onPressed: () {
                            _launchUrl(_psdUrl);
                          },
                          child: Text('Download PSD'),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all<Size>(
                              Size.fromWidth(180),
                            ),
                          ),
                        )
                      : SizedBox(width: 180),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 13,
                      horizontal: 8,
                    ),
                    child: Text(
                      loadedArt.id,
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    loadedArt.title,
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 3),
                      Text(
                        'Name: ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'School: ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Text(
                    loadedArt.description,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              ScoringItem(id: id),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

void _launchUrl(_url) async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
