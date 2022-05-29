// @dart=2.9

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import './art_detail_page.dart';
import './upload_page.dart';
import '../providers/arts.dart';
import '../widgets/title_text_button.dart';
import '../providers/art.dart';
import '../providers/arts.dart';

class UploadPage extends StatefulWidget {
  static const routeName = '/edit-product';

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final _titleFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();
  final _imageUrlController = TextEditingController();
  final _imageUrlFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();

  bool _isDigital = false;
  bool _isTraditional = false;

  var _editedProduct = Art(
    id: '',
    title: '',
    description: '',
    isDigital: false,
    isTraditional: false,
    imageURL: '',
    scoreOriginality: 0,
    scoreTheme: 0,
    scoreTechnique: 0,
    scoreCharDesign: 0,
    scoreOverallDesign: 0,
    comment: '',
    isScored: false,
  );
  var _initValues = {
    'id': '',
    'title': '',
    'description': '',
    'imageURL': '',
    'scoreOriginality': '',
    'scoreTheme': '',
    'scoreTechnique': '',
    'scoreCharDesign': '',
    'scoreOverallDesign': '',
    'comment': '',
  };
  var _isInit = true;
  var _isLoading = false;

  @override
  void initState() {
    _imageUrlFocusNode.addListener(_updateImageUrl);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      final String productId =
          ModalRoute.of(context).settings.arguments as String;
      if (productId != null) {
        _editedProduct =
            Provider.of<Arts>(context, listen: false).findById(productId);
        _initValues = {
          'id': _editedProduct.id,
          'title': _editedProduct.title,
          'description': _editedProduct.description,
          'imageURL': '',
          'scoreOriginality': _editedProduct.scoreOriginality as String,
          'scoreTheme': _editedProduct.scoreTheme as String,
          'scoreTechnique': _editedProduct.scoreTechnique as String,
          'scoreCharDesign': _editedProduct.scoreCharDesign as String,
          'scoreOverallDesign': _editedProduct.scoreOverallDesign as String,
          'comment': _editedProduct.comment,
        };
        _imageUrlController.text = _editedProduct.imageURL;
      }
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _imageUrlFocusNode.removeListener(_updateImageUrl);
    _titleFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _imageUrlController.dispose();
    _imageUrlFocusNode.dispose();
    super.dispose();
  }

  void _updateImageUrl() {
    if (!_imageUrlFocusNode.hasFocus) {
      if ((!_imageUrlController.text.startsWith('http') &&
              !_imageUrlController.text.startsWith('https')) ||
          (!_imageUrlController.text.endsWith('.png') &&
              !_imageUrlController.text.endsWith('.jpg') &&
              !_imageUrlController.text.endsWith('.jpeg'))) {
        return;
      }
      setState(() {});
    }
  }

  String _gotImage;
  Future<void> _getImage() async {
    final String gotImage = await Provider.of<Art>(context, listen: false)
        .getImage(_editedProduct.id);
    setState(() => _gotImage = gotImage);
  }

  Future<void> _saveForm() async {
    final isValid = _form.currentState.validate();
    final _loadedItem =
        Provider.of<Arts>(context, listen: false).findById(_editedProduct.id);
    if (!isValid) {
      return;
    }
    _form.currentState.save();

    setState(() {
      _isLoading = true;
    });
    if (_loadedItem.id != '') {
      await Provider.of<Arts>(context, listen: false)
          .updateProduct(_editedProduct.id, _editedProduct);
      await print('updated');
    } else {
      try {
        await Provider.of<Arts>(context, listen: false)
            .addProduct(_editedProduct);
        await print('new added');
      } catch (error) {
        await showDialog<Null>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('An error occured!'),
            content: const Text('Something went wrong.'),
            actions: [
              FlatButton(
                  onPressed: () {
                    // Navigator.of(ctx).pop();
                  },
                  child: const Text('Okay'))
            ],
          ),
        );
      }
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(2),
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
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 5,
              ),
              child: Form(
                key: _form,
                child: ListView(
                  children: <Widget>[
                    TextFormField(
                      initialValue: _initValues['id'],
                      decoration: const InputDecoration(labelText: 'Id'),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_titleFocusNode);
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please provide a value.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _editedProduct = Art(
                          id: value,
                          title: _editedProduct.title,
                          description: _editedProduct.description,
                          isDigital: _editedProduct.isDigital,
                          isTraditional: _editedProduct.isTraditional,
                          imageURL: _editedProduct.imageURL,
                          scoreOriginality: _editedProduct.scoreOriginality,
                          scoreTheme: _editedProduct.scoreTheme,
                          scoreTechnique: _editedProduct.scoreTechnique,
                          scoreCharDesign: _editedProduct.scoreCharDesign,
                          scoreOverallDesign: _editedProduct.scoreOverallDesign,
                          comment: _editedProduct.comment,
                          isScored: _editedProduct.isScored,
                        );
                      },
                      onSaved: (value) {
                        _editedProduct = Art(
                          id: value,
                          title: _editedProduct.title,
                          description: _editedProduct.description,
                          isDigital: _editedProduct.isDigital,
                          isTraditional: _editedProduct.isTraditional,
                          imageURL: _editedProduct.imageURL,
                          scoreOriginality: _editedProduct.scoreOriginality,
                          scoreTheme: _editedProduct.scoreTheme,
                          scoreTechnique: _editedProduct.scoreTechnique,
                          scoreCharDesign: _editedProduct.scoreCharDesign,
                          scoreOverallDesign: _editedProduct.scoreOverallDesign,
                          comment: _editedProduct.comment,
                          isScored: _editedProduct.isScored,
                        );
                      },
                    ),
                    TextFormField(
                      initialValue: _initValues['title'],
                      decoration: const InputDecoration(labelText: 'Title'),
                      focusNode: _titleFocusNode,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context)
                            .requestFocus(_descriptionFocusNode);
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please provide a title.';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _editedProduct = Art(
                          id: _editedProduct.id,
                          title: value,
                          description: _editedProduct.description,
                          isDigital: _editedProduct.isDigital,
                          isTraditional: _editedProduct.isTraditional,
                          imageURL: _editedProduct.imageURL,
                          scoreOriginality: _editedProduct.scoreOriginality,
                          scoreTheme: _editedProduct.scoreTheme,
                          scoreTechnique: _editedProduct.scoreTechnique,
                          scoreCharDesign: _editedProduct.scoreCharDesign,
                          scoreOverallDesign: _editedProduct.scoreOverallDesign,
                          comment: _editedProduct.comment,
                          isScored: _editedProduct.isScored,
                        );
                      },
                    ),
                    TextFormField(
                      initialValue: _initValues['description'],
                      decoration:
                          const InputDecoration(labelText: 'Description'),
                      maxLines: 2,
                      keyboardType: TextInputType.multiline,
                      focusNode: _descriptionFocusNode,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a description.';
                        }
                        if (value.length < 10) {
                          return 'Should be at least 10 characters long.';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _editedProduct = Art(
                          id: _editedProduct.id,
                          title: _editedProduct.title,
                          description: value,
                          isDigital: _editedProduct.isDigital,
                          isTraditional: _editedProduct.isTraditional,
                          imageURL: _editedProduct.imageURL,
                          scoreOriginality: _editedProduct.scoreOriginality,
                          scoreTheme: _editedProduct.scoreTheme,
                          scoreTechnique: _editedProduct.scoreTechnique,
                          scoreCharDesign: _editedProduct.scoreCharDesign,
                          scoreOverallDesign: _editedProduct.scoreOverallDesign,
                          comment: _editedProduct.comment,
                          isScored: _editedProduct.isScored,
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isDigital = true;
                                _isTraditional = false;
                                _editedProduct.isDigital = _isDigital;
                                _editedProduct.isTraditional = _isTraditional;
                              });
                            },
                            child: const Text('Digital Art'),
                            style: _isDigital
                                ? ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.amber),
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        const Size.fromWidth(125)),
                                  )
                                : ButtonStyle(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        const Size.fromWidth(125)),
                                  ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isDigital = false;
                                _isTraditional = true;
                                _editedProduct.isDigital = _isDigital;
                                _editedProduct.isTraditional = _isTraditional;
                              });
                            },
                            child: const Text('Traditional Art'),
                            style: _isTraditional
                                ? ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.amber),
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        const Size.fromWidth(125)),
                                  )
                                : ButtonStyle(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        const Size.fromWidth(125)),
                                  ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 640,
                          height: 360,
                          margin: const EdgeInsets.only(
                            top: 8,
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          child: _editedProduct.imageURL.isEmpty
                              ? const Text('Enter a URL')
                              : FittedBox(
                                  child: Image.network(
                                    _editedProduct.imageURL,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 8,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              _getImage().then(
                                (value) => {
                                  _editedProduct.imageURL = _gotImage,
                                },
                              );
                            },
                            child: const Text('Search Image'),
                            style: ButtonStyle(),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 28,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              _saveForm();
                              // .then((value) => _form.currentState.reset());
                              print(_editedProduct.id);
                              print(_editedProduct.title);
                              print(_editedProduct.description);
                              print(_editedProduct.isDigital);
                              print(_editedProduct.isTraditional);
                              print(_editedProduct.imageURL);
                              print(_editedProduct.scoreOriginality);
                              print(_editedProduct.scoreTheme);
                              print(_editedProduct.scoreTechnique);
                              print(_editedProduct.scoreCharDesign);
                              print(_editedProduct.scoreOverallDesign);
                              print(_editedProduct.comment);
                              print(_editedProduct.isScored);
                            },
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  const Size.fromWidth(350)),
                            ),
                            child: const Text(
                              'Upload',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
