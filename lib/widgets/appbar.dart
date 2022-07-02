// @dart=2.9
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './title_text_button.dart';
import '../providers/auth.dart';
import '../pages/digital_page.dart';
import '../pages/traditional_page.dart';
import '../pages/upload_page.dart';
import '../pages/auth_screen.dart';
import '../models/http_exception.dart';
import '../providers/excel.dart';

class AppBarItem extends StatefulWidget implements PreferredSizeWidget {
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
  @override
  State<AppBarItem> createState() => _AppBarItemState();
}

class _AppBarItemState extends State<AppBarItem> {
  final _formKey = GlobalKey<FormState>();
  var _isLoading = false;

  Map<String, String> _authData = {
    'username': '',
    'password': '',
  };

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('An Error Occurred!'),
        content: Text(message),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Text('Okay'),
          )
        ],
      ),
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      // Invalid!
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });
    try {
      // Log user in
      await Provider.of<Auth>(context, listen: false).login(
        _authData['username'],
        _authData['password'],
      );
    } on HttpException catch (error) {
      var errorMessage = 'Authentication failed';
      if (error.toString().contains('EMAIL_EXISTS')) {
        errorMessage = 'This email  address is already in use.';
      } else if (error.toString().contains('INVALID_EMAIL')) {
        errorMessage = 'This is not a valid email address';
      } else if (error.toString().contains('WEAK_PASSWORD')) {
        errorMessage = 'This password is too weak.';
      } else if (error.toString().contains('EMAIL_NOT_FOUND')) {
        errorMessage = 'Could not find a user with that email.';
      } else if (error.toString().contains('INVALID_PASSWORD')) {
        errorMessage = 'Invalid password.';
      }
      _showErrorDialog(errorMessage);
    } catch (error) {
      const errorMessage =
          'Could not authenticate you. Please try again later.';
      _showErrorDialog(errorMessage);
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
          const TitleTextButton(DigitalPage.routeName, 'Digital'),
          const SizedBox(width: 55),
          const TitleTextButton(TraditionalPage.routeName, 'Traditional'),
          // const SizedBox(width: 55),
          // const TitleTextButton(UploadPage.routeName, 'UPLOAD'),
          const SizedBox(width: 55),
          TextButton(
            onPressed: () {
              Provider.of<ExcelItem>(context, listen: false)
                  .createExcel(context);
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all<Color>(Colors.white12),
            ),
            child: Text(
              'Report',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(child: Container()),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  DigitalPage.routeName, (Route<dynamic> route) => false);
              Provider.of<Auth>(context, listen: false).logout();
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all<Color>(Colors.white12),
            ),
            child: const Text(
              'LOG OUT',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
