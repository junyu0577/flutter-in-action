import 'package:flutter/material.dart';
import 'package:flutter_in_action/widget/ForthTabPage.dart';
import 'package:flutter_in_action/widget/MyBottomNavigationBar.dart';
import 'package:flutter_in_action/widget/MyDrawer.dart';
import 'package:flutter_in_action/widget/MyListView.dart';
import 'package:flutter_in_action/widget/ThirdTabPage.dart';

import 'detail/ProductDetail.dart';
import 'widget/SecondTabPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeList(),
      routes: {
        '/detail':(context)=>ProductDetail(title:'title'),
      },
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          splashColor: Colors.white70,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5)),
    );
  }
}

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "title",
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () => debugPrint("search"),
              )
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.black87,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                IconButton(
                  icon: Icon(Icons.fastfood),
                ),
                IconButton(
                  icon: Icon(Icons.local_drink),
                ),
                IconButton(
                  icon: Icon(Icons.games),
                ), IconButton(
                  icon: Icon(Icons.view_quilt),
                )
              ],
            ),
          ),
          drawer: MyDrawer(),
          bottomNavigationBar: MyBottomNavigationBar(),
          body: TabBarView(
            children: <Widget>[
             MyListView(),
              SecondTabPage(),
              ThirdTabPage(),
              ForthTabPage()
            ],
          )),
    );
  }
}


