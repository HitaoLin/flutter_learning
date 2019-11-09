import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CheckBoxPageState();
  }
}

class CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: this.flag,
                onChanged: (v) {
                  setState(() {
                    this.flag = v;
                  });
                },
                activeColor: Colors.yellow,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(this.flag ? '选中' : '未选中'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CheckboxListTile(
            value: this.flag,
            onChanged: (v) {
              setState(() {
                this.flag = v;
              });
            },
            title: Text('标题'),
            subtitle: Text('这是二级标题'),
            selected: this.flag, //选中文字颜色改变
          ),
          Divider(),
          CheckboxListTile(
            value: this.flag,
            onChanged: (v) {
              setState(() {
                this.flag = v;
              });
            },
            title: Text('标题'),
            subtitle: Text('这是二级标题'),
            secondary: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
