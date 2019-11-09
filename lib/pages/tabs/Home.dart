import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('跳转到搜索页面'),
              onPressed: () {
                Navigator.pushNamed(context, '/search',arguments: {'id':'Search'});
//              Navigator.pushNamed(context, '/search');
              },
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('跳转到表单页面并传值页面'),
              onPressed: () {
                Navigator.pushNamed(context, '/from');
              },
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('跳转到商品页面'),
              onPressed: () {
                Navigator.pushNamed(context, '/product');
              },
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('跳转到AppBarDemo'),
              onPressed: () {
                Navigator.pushNamed(context, '/appbar');
              },
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('跳转到TabBarController'),
              onPressed: () {
                Navigator.pushNamed(context, '/tabBarController');
              },
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('跳转到按钮页面'),
              onPressed: () {
                Navigator.pushNamed(context, '/button');
              },
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('跳转到表单页面'),
              onPressed: () {
                Navigator.pushNamed(context, '/forms');
              },
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('学员登记系统'),
              onPressed: () {
                Navigator.pushNamed(context, '/formDemo');
              },
            ),
          ],
        ),
      ),
    );
  }
}
