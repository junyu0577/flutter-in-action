import 'package:flutter/material.dart';
import 'package:flutter_in_action/detail/ProductDetail.dart';

class SecondTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = new TextStyle(
        fontSize: 16,
        color: Colors.grey
    );

    final String articleName = "《在咸鱼实习的日子》";

    return new Container(

        child: new GestureDetector(
          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) =>
                  ProductDetail(title:'hello next page'),
          )),
          child: new RichText(
              text: TextSpan(
                  text: articleName,
                  style: _textStyle,
                  children: [
                    TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                        text: "在阿里实习的三个月，期间还有一些有意思的活动，"
                            "比如百技(为期三天的头脑风暴)，各个方向大神的经验分享"
                            "还有新人秀等等。总的来说在闲鱼实习的三个月，说短不短，"
                            "说长不长，但是过的十分充实且有意义，他给我带来"
                            "了一些思维上的转变，"
                            "让我受益匪浅，让我从一个学生逐渐转变成了一个职场员工。"
                    )
                  ]

              )


          ),
        )
    );
  }
}
