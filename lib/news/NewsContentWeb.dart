
import 'package:flutter/material.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

class NewsContentWebPage extends StatefulWidget{

  Map arguments;

  NewsContentWebPage({Key key,this.arguments}):super(key : key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewsContentWebPageState(this.arguments);
  }

}

class NewsContentWebPageState extends State<NewsContentWebPage>{
  Map arguments;
  NewsContentWebPageState(this.arguments);
  bool _flag = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(this.arguments);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('新闻详情'),
        centerTitle: true,
      ),
      body:  Column(
        children: <Widget>[
          this._flag?_getMoreWidget():Text(""),
          Expanded(child: InAppWebView(
            initialUrl: "http://www.phonegap100.com/newscontent.php?aid=${this.arguments["aid"]}",
            onProgressChanged: (InAppWebViewController controller,int progress) {
              print(progress/100);
              if((progress/100)>0.999){
                setState(() {
                  this._flag=false;
                });
              }
            },
          ))
        ],
      ),
    );
  }
}

//加载中的圈圈
Widget _getMoreWidget() {


  return Center(
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            '加载中...',
            style: TextStyle(fontSize: 16.0),
          ),
          CircularProgressIndicator(
            strokeWidth: 1.0,
          )
        ],
      ),
    ),
  );
}
