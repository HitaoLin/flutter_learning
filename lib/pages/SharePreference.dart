import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SharePreferencePageState();
  }

}

class SharePreferencePageState extends State<SharePreferencePage>{

  String usrename;
  int age;

  _saveData() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("username", "张三");
    sp.setInt("age", 20);
  }

  ///其他页面获取数据同理
  _getData() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      usrename = sp.getString("username");
      age = sp.getInt("age");
    });
    print("${usrename}${age}");
  }

  _removeData() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove("age");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("本地存储"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('保存数据'),
              onPressed: () {
                _saveData();
              },
            ),
            SizedBox(width: 20,),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('获取数据'),
              onPressed: () {
                _getData();
              },
            ),
            SizedBox(width: 20,),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('删除数据-age'),
              onPressed: () {
                _removeData();
              },
            ),
            SizedBox(width: 20,),
            Text("username:${usrename}\nage:${age}"),
            SizedBox(width: 20,),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('跳转到获取数据'),
              onPressed: () {
                Navigator.pushNamed(context, '/getSPData');
              },
            ),
            SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}