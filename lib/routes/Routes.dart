import 'package:flutter/material.dart';
import 'package:flutter_helloworld/form/Forms.dart';
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
import '../form/Forms.dart';
import '../form/TextField.dart';
import '../form/CheckBox.dart';
import '../form/Radio.dart';
import '../form/FormDemo.dart';
import '../form/TextFieldAssignment.dart';
import '../date/DateTime.dart';
import '../date/DatePicker.dart';
import '../date/DatePickerPub.dart';
import '../demo/Demo.dart';
import '../demo/GestureDetector.dart';
import '../demo/Dismissible.dart';
import '../demo/Fonts.dart';

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
  '/forms': (context) => FormsPage(),
  '/textField': (context) => TextFieldPage(),
  '/checkBox': (context) => CheckBoxPage(),
  '/radio': (context) => RadioPage(),
  '/formDemo': (context) => FormDemoPage(),
  '/textFieldAssignment': (context) => TextFiledAssignmentPage(),
  '/dateTime': (context) => DateTimePage(),
  '/datePicker': (context) => DatePickerPage(),
  '/datePickerPub': (context) => DatePickerPubPage(),
  '/demo': (context) => DemoPage(),
  '/gestureDetector': (context) => GestureDetectorPage(),
  '/dismissible': (context) => DismissiblePage(),
  '/fonts': (context) => FontsPage(),
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
