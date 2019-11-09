import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormDemoPageState();
  }
}

class FormDemoPageState extends State<FormDemoPage> {
  String username;
  int sex = 1;
  String info = "";

  void _sexChanged(value) {
    setState(() {
      this.sex = value;
    });
  }

  List hobbies = [
    {"checked": true, "title": "吃饭"},
    {"checked": false, "title": "睡觉"},
    {"checked": true, "title": "写代码"},
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];

    for (var i = 0; i < this.hobbies.length; i++) {
      tempList.add(Row(children: <Widget>[
        Text(this.hobbies[i]["title"] + ":"),
        Checkbox(
          value: this.hobbies[i]["checked"],
          onChanged: (value) {
            setState(() {
              this.hobbies[i]["checked"] = value;
            });
          },
        )
      ]));
    }

    return tempList;
  }

  List<Widget> _getHobbies() {
    List<Widget> tempList = [];
    List list = [];
    for (var i = 0; i < this.hobbies.length; i++) {
      if (this.hobbies[i]["checked"] == true) {
        list.add(this.hobbies[i]["title"] + "  ");
      }
    }
    tempList.add(Row(
      children: <Widget>[
        Text(
            "用户信息：${this.username == null ? "  " : this.username}\n性别：${this.sex == 1 ? "男" : "女"}\n爱好：${list}\n描述:${this.info}")
      ],
    ));
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("学员登记系统"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: '输入用户信息',
                ),
                onChanged: (v) {
                  setState(() {
                    this.username = v;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Text('男'),
                  Radio(
                      value: 1,
                      groupValue: this.sex,
                      onChanged: (v) {
                        this._sexChanged(v);
                      }),
                  SizedBox(
                    width: 20,
                  ),
                  Text('女'),
                  Radio(
                      value: 2,
                      groupValue: this.sex,
                      onChanged: (v) {
                        this._sexChanged(v);
                      }),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //爱好
              Column(
                children: this._getHobby(),
              ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: "描述信息", border: OutlineInputBorder()),
                onChanged: (v) {
                  setState(() {
                    this.info = v;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  child: Text('提交信息'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print(this.username);
                    print(this.sex);
                    print(this.hobbies);
                  },
                ),
              ),
              Column(
                children: this._getHobbies(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/**
 * 视频中源码
 */
//import 'package:flutter/material.dart';
//
//class FormDemoPage extends StatefulWidget {
//  FormDemoPage({Key key}) : super(key: key);
//
//  _FormDemoPageState createState() => _FormDemoPageState();
//}
//
//class _FormDemoPageState extends State<FormDemoPage> {
//
//  String username;
//  int sex=1;
//  String info='';
//
//  List hobby=[
//    {
//      "checked":true,
//      "title":"吃饭"
//    },
//    {
//      "checked":false,
//      "title":"睡觉"
//    },
//    {
//      "checked":true,
//      "title":"写代码"
//    }
//  ];
//
//  List<Widget> _getHobby(){
//
//    List<Widget> tempList=[];
//
//    for(var i=0;i<this.hobby.length;i++){
//
//      tempList.add(
//          Row(
//            children: <Widget>[
//              Text(this.hobby[i]["title"]+":"),
//              Checkbox(
//                  value: this.hobby[i]["checked"],
//                  onChanged: (value){
//                    setState(() {
//                      this.hobby[i]["checked"]=value;
//                    });
//                  }
//              )
//            ],
//          )
//      );
//
//    }
//    return tempList;
//
//  }
//
//  void _sexChanged(value){
//    setState(() {
//      this.sex=value;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("学员信息登记系统"),
//      ),
//      body: Padding(
//        padding: EdgeInsets.all(20),
//        child: Column(
//          children: <Widget>[
//
//            TextField(
//              decoration: InputDecoration(
//                  hintText: "输入用户信息"
//              ),
//              onChanged: (value){
//                setState(() {
//                  this.username=value;
//                });
//              },
//            ),
//            SizedBox(height:10),
//            Row(
//              children: <Widget>[
//                Text("男"),
//                Radio(
//                    value: 1,
//                    onChanged: this._sexChanged,
//                    groupValue: this.sex
//                ),
//                SizedBox(width: 20),
//                Text("女"),
//                Radio(
//                    value: 2,
//                    onChanged:this._sexChanged,
//                    groupValue: this.sex
//                )
//              ],
//            ),
//
//            //爱好
//            SizedBox(height:40),
//            Column(
//              children: this._getHobby(),
//            ),
//
//            TextField(
//              maxLines: 4,
//              decoration: InputDecoration(
//                  hintText: "描述信息",
//                  border: OutlineInputBorder()
//              ),
//              onChanged: (value){
//                setState(() {
//                  this.info=value;
//                });
//              },
//            ),
//
//
//            SizedBox(height:40),
//            Container(
//              width: double.infinity,
//              height: 40,
//              child: RaisedButton(
//                child: Text("提交信息"),
//                onPressed: (){
//                  print(this.sex);
//                  print(this.username);
//                  print(this.hobby);
//                },
//                color: Colors.blue,
//                textColor: Colors.white,
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
