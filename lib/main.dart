import 'package:flutter/material.dart';

import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
//        home: Tabs(),
      debugShowCheckedModeBanner: false,//去掉debug图标
      initialRoute: '/', //初始化的时候加载路由
      onGenerateRoute: onGenerateRoute,
    );
  }
}
