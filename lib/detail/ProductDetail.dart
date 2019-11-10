import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  String title;

  ProductDetail({this.title = "default title"});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> argsTitle =
        ModalRoute.of(context).settings.arguments;
    String realTitle = title;
    if (argsTitle != null) {
      realTitle = argsTitle['title'];
    }

    return new Scaffold(
      appBar: AppBar(
        title: Text(realTitle),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
