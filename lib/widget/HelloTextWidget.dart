import 'package:flutter/material.dart';

class HelloTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          "hello world",
          style: TextStyle(color: Colors.yellow),
          textDirection: TextDirection.ltr,
        ));
  }
}