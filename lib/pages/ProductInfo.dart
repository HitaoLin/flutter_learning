import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {

  final Map arguments;

  ProductInfoPage({Key key, this.arguments}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductInfoPageState(arguments: this.arguments);
  }
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  Map arguments;

  _ProductInfoPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('商品详情'),
          centerTitle: true,
        ),
        body: Container(
          child: Text('pid=${arguments['pid']}'),
        ));
  }
}
