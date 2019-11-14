import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'components/MyDialog.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DialogPageState();
  }
}

class DialogPageState extends State<DialogPage> {
  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('你确定要删除吗？'),
            actions: <Widget>[
              FlatButton(
                  child: Text("取消"),
                  onPressed: () {
                    print('取消');
                    Navigator.pop(context, "Cancel");
                  }),
              FlatButton(
                  child: Text("确定"),
                  onPressed: () {
                    print('确定');
                    Navigator.pop(context, "OK");
                  }),
            ],
          );
        });
    print(result);
  }

  _simperDialog() async {
    var result = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('选择内容'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Option A'),
              onPressed: () {
                print('Option A');
                Navigator.pop(context, 'A');
              },
            ),
            SimpleDialogOption(
              child: Text('Option B'),
              onPressed: () {
                print('Option B');
                Navigator.pop(context, 'B');
              },
            ),
            SimpleDialogOption(
              child: Text('Option C'),
              onPressed: () {
                print('Option C');
                Navigator.pop(context, 'C');
              },
            ),
          ],
        );
      },
    );
    print(result);
  }

  _showModalBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 300,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('分享 A'),
                  onTap: () {
                    print('分享 A');
                    Navigator.pop(context,'A');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 B'),
                  onTap: () {
                    print('分享 B');
                    Navigator.pop(context,'B');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 C'),
                  onTap: () {
                    print('分享 C');
                    Navigator.pop(context,'C');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 D'),
                  onTap: () {
                    print('分享 D');
                    Navigator.pop(context,'D');
                  },
                ),
              ],
            ),
          );
        });
    print(result);
  }

  _toast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('alert弹出框-AlertDialog'),
              onPressed: _alertDialog,
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('select弹出框-SelectDialog'),
              onPressed: _simperDialog,
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('ActionSheet底部弹出框-showModalBottomSheet'),
              onPressed: _showModalBottomSheet,
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('toast-fluttertoast第三方库'),
              onPressed: _toast,
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('自定义Dialog'),
              onPressed: (){
                showDialog(context: context,
                builder:(context){
                  return MyDialog(title: "关于我们",content: "我是内容11",);
                });
              },
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
