import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TextFieldPageState();
  }
}

class TextFieldPageState extends State<TextFieldPage> {

  var _username = new TextEditingController();//初始化时候给表单赋值
  var _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
        centerTitle: true,
      ),
      body: TextDemo(),
//      body: Container(
//        child:  Padding(
//          padding: EdgeInsets.all(20),
//          child: Column(
//            children: <Widget>[
//              TextField(
//                decoration: InputDecoration(hintText: '请输入用户名'),
//                controller: _username,
//                onChanged: (value) {
//                  setState(() {
//                    _username.text = value;
//                  });
//                },
//              ),
//              SizedBox(
//                height: 20,
//              ),
//              TextField(
//                obscureText: true,
//                decoration: InputDecoration(hintText: '请输入密码'),
//                onChanged: (value) {
//                  setState(() {
//                    this._password = value;
//                  });
//                },
//              ),
//              SizedBox(
//                height: 20,
//              ),
//              Container(
//                width: double.infinity,
//                height: 40,
//                child: RaisedButton(
//                  child: Text('登录'),
//                  color: Colors.blue,
//                  textColor: Colors.white,
//                  onPressed: () {
//                    print(_username.text);
//                    print(this._password);
//                  },
//                ),
//              )
//            ],
//          ),
//        ),
//      )
    );
  }
}

class TextDemo extends StatelessWidget {
  TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
      child:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextField(),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: '请输入搜索的内容', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: '多行文本框', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration:
              InputDecoration(hintText: '密码框', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration:
              InputDecoration(labelText: '用户名', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration:
              InputDecoration(labelText: '密码', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: '请输入用户名',
              ),
            ),
          ],
        ),
      ),


    );
  }
}
