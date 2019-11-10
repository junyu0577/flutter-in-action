import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.white,
        width: 300,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Junyu0577",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "junyu0577@gmail.com",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars0.githubusercontent.com/u/13827174?s=460&v=4"),
              ),
              decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter:
                      ColorFilter.mode(Colors.yellow.withOpacity(0.6),
                          BlendMode.srcOver),
                      image: NetworkImage(
                          'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'))),
            ),
            ListTile(
              title: Text(
                "Message",
                textAlign: TextAlign.left,
              ),
              leading: Icon(Icons.message),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                "Message",
                textAlign: TextAlign.left,
              ),
              leading: Icon(Icons.message),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                "Message",
                textAlign: TextAlign.left,
              ),
              leading: Icon(Icons.message),
              onTap: () => Navigator.pop(context),
            )
          ],
        ));
  }

}