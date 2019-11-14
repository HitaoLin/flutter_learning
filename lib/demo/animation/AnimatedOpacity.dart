import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  AnimatedOpacityPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimatedOpacityPageState();
  }
}

class AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  //控制动画显示状态变量
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacityPage'),
      ),
      body: Column(
        children: <Widget>[
          Text('淡入淡出动画示例'),
          Center(
            //添加Opacity动画
            child: AnimatedOpacity(
              //控制Opacity值 范围从0.0到1.0
              opacity: _visible ? 1.0 : 0.0,
              //设置动画时长
              duration: Duration(microseconds: 1000000),
              child: Container(
                width: 300.0,
                height: 300.0,
                color: Colors.deepPurple,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              //控制动画显示状态
              setState(() {
                _visible = !_visible;
              });
            },
            tooltip: "显示隐藏",
            child: new Icon(Icons.flip),
          )
        ],
      ),
    );
  }
}
