import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{

//  SearchPage({Key key}):super(key:key);

final arguments;

SearchPage({this.arguments});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchPageState();
  }

}

class _SearchPageState extends State<SearchPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.arguments != null ?widget.arguments['id'] : '搜索',textDirection: TextDirection.ltr),
        centerTitle: true,
      ),
      body: null,
    );
  }
}