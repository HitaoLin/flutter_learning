import 'package:flutter/material.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/Search.dart';
import '../pages/Form.dart';
import '../pages/Tabs.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';
import '../AppBarDemo.dart';
import '../TabBarController.dart';
import '../User.dart';
import '../Button.dart';

//配置路由
final routes = {
  '/': (context, {arguments}) => Tabs(),
  '/from': (context) => FormPage(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/product': (context) => ProductPage(),
  '/productinfo': (context, {arguments}) =>
      ProductInfoPage(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerfirst': (context) => RegisterFirstPage(),
  '/registersecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/appbar': (context) => AppBarDemoPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/user': (context) => UserPage(),
  '/button': (context) => ButtonPage(),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理

  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
