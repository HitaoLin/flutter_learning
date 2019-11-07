import 'package:flutter/material.dart';

class UserPage extends StatefulWidget{
  
  UserPage({Key key}):super(key:key);
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UserPageState();
  }
  
}

class UserPageState  extends State<UserPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('用户中心'),
        centerTitle: true,
      ),
      body: Text('用户中心页面'),
    );
  }
}