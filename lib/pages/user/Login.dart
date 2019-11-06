import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("登录"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('这是登录页面'),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("登录"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ));
  }
}
