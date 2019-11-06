import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  String title;

  FormPage({Key key, String title = "表单"}) {
    this.title = title;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FormPageState();
  }
}

class _FormPageState extends State<FormPage> {

  String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(widget.title, textDirection: TextDirection.ltr),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
        ],
      ),
    );
  }
}
