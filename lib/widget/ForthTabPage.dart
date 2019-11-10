import 'package:flutter/material.dart';

class ForthTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new PageView(
      controller: PageController(
        initialPage: 0
      )
    ,onPageChanged: (pageIndex)=>debugPrint("page:$pageIndex")
      ,children: <Widget>[
        Container(
          color: Colors.brown[100],
          alignment: Alignment(0, 0),
          child: Text(
            "ONE",
            style: TextStyle(fontSize: 32),
          ),
        ),
        Container(
            color: Colors.red[100],
            alignment: Alignment(0, 0),
            child: Text(
              "TWO",
              style: TextStyle(fontSize: 32),
            )),
        Container(
          color: Colors.green[100],
          alignment: Alignment(0, 0),
          child: Text(
            "THREE",
            style: TextStyle(fontSize: 32),
          ),
        )
      ],
    );
  }
}
