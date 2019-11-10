import 'package:flutter/material.dart';
import 'package:flutter_in_action/model/Post.dart';

class MyListView extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          new Image.network(posts[index].imageUrl),
          SizedBox(
            height: 10,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.subtitle,
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: posts.length, itemBuilder: _listItemBuilder);
  }
}
