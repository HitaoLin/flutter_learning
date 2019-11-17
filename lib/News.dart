import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget{

  NewsPage({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewsPageState();
  }

}

class NewsPageState extends State<NewsPage>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('新闻列表'),
        centerTitle: true,
      ),
      body:Text('新闻列表'),
    );
  }


}