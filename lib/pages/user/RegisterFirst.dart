import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterFirstPageState();
  }
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第一步-输入手机号"),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          children: <Widget>[
            Text('这是注册第一个页面，请输入手机号点击下一步'),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("下一步"),
              onPressed: () {
                Navigator.pushNamed(context, '/registersecond');
              //替换路由
//              Navigator.pushReplacementNamed(context, '/registersecond');
              },
            ),
          ],
        ),
      ),
    );
  }
}
