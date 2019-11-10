import 'package:flutter/material.dart';

class ThirdTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BadgeIcon(Icons.pool,0),
        BadgeIcon(Icons.airplanemode_inactive,1),
        BadgeIcon(Icons.eject,2),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}

class BadgeIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final int index;

  BadgeIcon(this.icon,this.index, {this.size = 32});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: new GestureDetector(
          onTap: ()=>Navigator.pushNamed(context, "/detail",arguments: <String,String>{
            "title":"参数这么传就对了$index"
          }),
          child: Icon(
            icon,
            size: size,
            color: Colors.white,
          ),
        ),
        width: size + 16,
        height: size + 16,
        color: Colors.blueAccent);
  }
}
