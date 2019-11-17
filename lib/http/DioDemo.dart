import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class DioDemoPage extends StatefulWidget {
  DioDemoPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DioDemoPageState();
  }
}

class DioDemoPageState extends State<DioDemoPage> {
  List list = [];

  @override
  void initState() {
    this._getData();
  }

  _getData() async {
    var apiUrl =
        "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1";
    Response result = await Dio().get(apiUrl);

//    print(result.data);
    print(json.decode(result.data)["result"]);

    if (result.statusCode == 200) {
      print(result.data);
      setState(() {
        this.list = json.decode(result.data)['result'];
      });
    } else {
      print("失败${result.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DioDemo'),
        centerTitle: true,
      ),
//      body: this.list.length>0?ListView.builder(
//          itemCount: this.list.length,
//          itemBuilder: (context,index){
//            return ListTile(
//            title: Text("${this.list[index]['title']}"),
//            );
//            },
//          ):Text('加载中...'),

      body: this.list.length > 0
          ? ListView(
              children: this.list.map((value) {
                return ListTile(
                  title: Text(value['title']),
                );
              }).toList(),
            )
          : Text("加载中..."),
    );
  }
}
