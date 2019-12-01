import 'package:flutter/material.dart';
import '../common/Storage.dart';

class SPGetDataPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SPGetDataPageState();
  }
}

class SPGetDataPageState extends State<SPGetDataPage> {
  String username = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('获取数据'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Text(_getSPData()),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('修改数据'),
              onPressed: () async {
                Storage.setString('username', '里斯');
                username = await Storage.getString("username");
                print(username);
              },
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('删除数据'),
              onPressed: () async {
                Storage.removeString("username");
                username = await Storage.getString("username");
                print(username);
              },
            ),
            SizedBox(
              width: 20,
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
