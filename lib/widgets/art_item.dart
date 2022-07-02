import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/art.dart';
import '../pages/art_detail_page.dart';

class ArtItem extends StatefulWidget {
  @override
  State<ArtItem> createState() => _ArtItemState();
}

class _ArtItemState extends State<ArtItem> {
  @override
  Widget build(BuildContext context) {
    final art = Provider.of<Art>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: art.isScored == 1 ? Colors.green : Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ArtDetailPage.routeName,
              arguments: art.id,
            );
          },
          child: GridTile(
            
            child: art.thumbnailURL != ''
                ? Image.network(
                    art.thumbnailURL,
                    // art.imageURL,
                    fit: BoxFit.contain,
                  )
                : Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/one-glance.appspot.com/o/Art%2Ferror404.png?alt=media&token=1e3ece1b-435b-45ea-b886-441fddd8f3a2',
                    fit: BoxFit.contain,
                  ),
            footer: Container(
              height: 55,
              child: GridTileBar(
                backgroundColor: Colors.black54,
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height:2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(art.id),
                        SizedBox(width: 3),
                        Text(art.title),
                      ],
                    ),
                    Text(
                      art.description,
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
