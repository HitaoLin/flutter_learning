import 'package:flutter/material.dart';

class FontsPage extends StatefulWidget{

  FontsPage({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FontsPageState();
  }

}

class FontsPageState extends State<FontsPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义字体'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('你好，Flutter',style: TextStyle(fontFamily: 'myfont',fontSize: 36.0),),
      ),
    );
  }
}