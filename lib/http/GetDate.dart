import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class GetDataPage extends StatefulWidget {
  GetDataPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetDataPageState();
  }
}

class GetDataPageState extends State<GetDataPage> {
  List list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getData();
  }

  _getData() async {
    var apiUrl = 'http://a.itying.com/api/productlist';
    var result = await get(apiUrl);
    if (result.statusCode == 200) {
      print(result.body);
      setState(() {
        this.list = json.decode(result.body)['result'];
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
          title: Text("渲染数据"),
          centerTitle: true,
        ),
        body: this.list.length > 0
            ? ListView.builder(
                itemCount: this.list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${this.list[index]['title']}"),
                  );
                },
              )
            : Text("加载中..."));
  }
}
