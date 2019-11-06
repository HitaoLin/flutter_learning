import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductPageState();
  }

}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('商品'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[

              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('跳转到商品详情'),
                onPressed: () {
                  Navigator.pushNamed(context, '/productinfo',arguments: {
                    'pid':456
                  });
                },
              ),

            ],
          ),
        ));
  }
}