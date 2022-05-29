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
    final art = Provider.of<Art>(context, listen: false);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: art.isScored == true ? Colors.green : Colors.white30,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ArtDetailPage.routeName,
                arguments: art.id,
              );
            },
            child: Image.network(
              art.imageURL,
              fit: BoxFit.contain,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
    );
  }
}
