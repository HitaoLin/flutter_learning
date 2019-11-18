import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class NewsContentPage extends StatefulWidget{

  Map arguments;

  NewsContentPage({Key key,this.arguments}):super(key : key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewsContentPageState(this.arguments);
  }

}

class NewsContentPageState extends State<NewsContentPage>{
  Map arguments;
  List _list = [];
  NewsContentPageState(this.arguments);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(this.arguments);
    this._getData();
  }

  _getData() async{
    var apiUrl="http://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=${this.arguments["aid"]}";
    var response = await Dio().get(apiUrl);

    setState(() {
      this._list = json.decode(response.data)['result'];
    });


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('新闻详情'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Html(
            data: """
              ${this._list.length>0?this._list[0]["content"]:''}       
  """,
            //Optional parameters:
            padding: EdgeInsets.all(8.0),
            backgroundColor: Colors.white70,
            defaultTextStyle: TextStyle(fontFamily: 'serif'),
            linkStyle: const TextStyle(
              color: Colors.redAccent,
            ),
            onLinkTap: (url) {
              // open url in a webview
            },
            onImageTap: (src) {
              // Display the image in large form.
            },
            //Must have useRichText set to false for this to work.

          )
        ],
      ),
    );
  }
}