import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  DemoPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DemoPageState();
  }
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Wrap(
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("GestureDetector手势检测"),
                onPressed: () {
                  Navigator.pushNamed(context, '/gestureDetector');
                },
              ),
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Dismissible滑动删除"),
                onPressed: () {
                  Navigator.pushNamed(context, '/dismissible');
                },
              ),
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("自定义字体"),
                onPressed: () {
                  Navigator.pushNamed(context, '/fonts');
                },
              ),
            ],
          ),
        ));
  }
}
