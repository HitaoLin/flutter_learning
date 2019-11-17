import 'package:flutter/material.dart';

class HttpBacPage extends StatefulWidget{

  HttpBacPage({Key key}):super(key : key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HttpBacPageState();
  }

}

class HttpBacPageState extends State<HttpBacPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpBac'),
        centerTitle: true,
      ),
      body: Text('HttpBac'),
    );
  }
}