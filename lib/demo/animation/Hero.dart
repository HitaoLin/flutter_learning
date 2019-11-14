import 'package:flutter/material.dart';

//页面切换动画
class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面切换动画图一"),
      ),
      //点击切换
      body: GestureDetector(
        //添加动画组件
        child: Hero(
          tag: '第一张图片',
          child: Image.network(
            'https://www.itying.com/images/flutter/2.png',
          ),
        ),
        onTap: (){
          //路由至第第二个页面
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return DestinationPage();
          }));
        },
      ),
    );
  }
}
//第二个页面即目标页面
class DestinationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面切换动画图二"),
      ),
      //点击返回
      body: GestureDetector(
        //添加动画组件
        child: Hero(
          tag: "第二张图片",
          child: Image.network( 'https://www.itying.com/images/flutter/3.png'),
        ),
        onTap: (){
          //页面返回
          Navigator.pop(context);
        },
      ),
    );
  }
}