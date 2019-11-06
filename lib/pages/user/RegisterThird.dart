import 'package:flutter/material.dart';
//引入Tabs
import '../Tabs.dart';

class RegisterThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterThirdPageState();
  }
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第三步-输入密码"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('这是注册页面Third,输入密码'),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('确定'),
              onPressed: (){
                //返回根
                Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(builder: (context) => new Tabs(index: 2,)), (route) => route == null);
              },
            )
          ],
        ),
      ),
    );
  }
}
