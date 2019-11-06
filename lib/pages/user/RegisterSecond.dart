import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterSecondPageState();
  }
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第二步-输入验证码"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('这是注册页面Second,输入验证码'),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('下一步'),
              onPressed: (){
                Navigator.pushNamed(context, '/registerThird');
              },
            )
          ],
        ),
      ),
    );
  }
}
