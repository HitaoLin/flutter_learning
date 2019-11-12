import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SettingPageState();
  }
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text("跳转到登录页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text("跳转到注册页面First"),
            onPressed: () {
              Navigator.pushNamed(context, '/registerfirst');
            },
          ),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text("跳转到Demo"),
            onPressed: () {
              Navigator.pushNamed(context, '/demo');
            },
          ),
        ],
      ),
    );
  }
}
