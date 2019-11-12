import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget{

  GestureDetectorPage({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GestureDetectorPageState();
  }

}

class GestureDetectorPageState extends State<GestureDetectorPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('手势检测'),
        centerTitle: true,
      ),
      body: new Center(
        child: MyButon(),
      ),
    );
  }
}


class MyButon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //一定要把被触摸的组件放在GestureDetector里面
    return new GestureDetector(
      onTap: (){
        //底部消息提示
        final snackBar = new SnackBar(content: new Text('你已按下'),);
        Scaffold.of((context)).showSnackBar(snackBar);
      },
      //添加容器接收触摸动作
      child: new Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Text('测试按钮'),
      ),
    );
  }

}