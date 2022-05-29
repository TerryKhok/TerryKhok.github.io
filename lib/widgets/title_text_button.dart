import 'package:flutter/material.dart';

class TitleTextButton extends StatelessWidget {
  final routeName;
  final text;

  const TitleTextButton(this.routeName, this.text);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.of(context).pushNamed(routeName),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(Colors.white12),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
