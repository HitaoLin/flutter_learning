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
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child:Wrap(
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
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('跳转到表单页面并传值页面'),
                onPressed: () {
                  Navigator.pushNamed(context, '/from');
                },
              ),
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('跳转到商品页面'),
                onPressed: () {
                  Navigator.pushNamed(context, '/product');
                },
              ),
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('跳转到AppBarDemo'),
                onPressed: () {
                  Navigator.pushNamed(context, '/appbar');
                },
              ),
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('跳转到TabBarController'),
                onPressed: () {
                  Navigator.pushNamed(context, '/tabBarController');
                },
              ),
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('跳转到按钮页面'),
                onPressed: () {
                  Navigator.pushNamed(context, '/button');
                },
              ),
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('跳转到表单页面'),
                onPressed: () {
                  Navigator.pushNamed(context, '/forms');
                },
              ),
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('学员登记系统'),
                onPressed: () {
                  Navigator.pushNamed(context, '/formDemo');
                },
              ),
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('日期组件'),
                onPressed: () {
                  Navigator.pushNamed(context, '/dateTime');
                },
              ),
              SizedBox(width: 20,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('轮播图组件'),
                onPressed: () {
                  Navigator.pushNamed(context, '/swiper');
                },
              ),
              SizedBox(width: 20,),
            ],
          ), 
        )
        
      ),
    );
  }
}
