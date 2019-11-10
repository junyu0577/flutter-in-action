import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyBottomNavigationState();
  }
}

class _MyBottomNavigationState extends State<MyBottomNavigationBar> {
  int _curIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      _curIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: _onTapHandler,
      selectedItemColor: Colors.green,
      currentIndex: _curIndex,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.history), title: Text("history")),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite), title: Text("favorite")),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("list")),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("my")),
      ],
    );
  }
}