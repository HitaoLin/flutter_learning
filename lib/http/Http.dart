import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget{

  HttpPage({Key key}):super(key : key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HttpPageState();
  }

}

class HttpPageState extends State<HttpPage>{

  _getData(){

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Http'),
        centerTitle: true,
      ),
      body:
       Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('get请求数据'),
                  onPressed: _getData,
                ),
                SizedBox(width: 20,),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('post提交数据'),
                  onPressed: () {

                  },
                ),
                SizedBox(width: 20,),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('get请求数据、渲染数据演示demo'),
                  onPressed: () {
              Navigator.pushNamed(context, '/getData');
                  },
                ),
                SizedBox(width: 20,),
              ],
            )
          ],
      ),
    );
  }
}