import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {

  AnimationPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationPageState();
  }

}

class AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Animation'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Wrap(
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("AnimatedOpacity实现渐变效果"),
                onPressed: () {
                  Navigator.pushNamed(context, '/animatedOpacity');
                },
              ),
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Hero实现页面切换动画"),
                onPressed: () {
                  Navigator.pushNamed(context, '/hero');
                },
              ),
            ],
          ),
        ));
  }
}