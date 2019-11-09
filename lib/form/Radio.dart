import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RadioPageState();
  }
}

class RadioPageState extends State<RadioPage> {
  int sex = 1;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('男：'),
              Radio(
                  value: 1,
                  groupValue: this.sex,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  }),
              SizedBox(
                width: 20,
              ),
              Text('女：'),
              Radio(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  })
            ],
          ),
          Row(
            children: <Widget>[
              Text('${this.sex}'),
              Text(this.sex == 1 ? '男' : '女'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          RadioListTile(
            value: 1,
            onChanged: (v) {
              setState(() {
                this.sex = v;
              });
            },
            groupValue: this.sex,
            title: Text('标题'),
            subtitle: Text('这是二级标题'),
            secondary: Icon(Icons.help),
            selected: this.sex == 1, //选中文字颜色跟着改变
          ),
          RadioListTile(
            value: 2,
            onChanged: (v) {
              setState(() {
                this.sex = v;
              });
            },
            groupValue: this.sex,
            title: Text('标题'),
            subtitle: Text('这是二级标题'),
//            secondary: Icon(Icons.help),
            secondary:
                Image.network('https://www.itying.com/images/flutter/1.png'),
            selected: this.sex == 2, //选中文字颜色跟着改变
          ),
          SizedBox(
            height: 20,
          ),
          Switch(
            value: this.flag,
            onChanged: (v){
              setState(() {
                this.flag = v;
                print(v);
              });
            },
          )
        ],
      ),
    );
  }
}
