import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget{

  FormsPage({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormPagesState();
  }

}

class FormPagesState extends State<FormsPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('表单页面'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('TextField'),
                onPressed: () {
                  Navigator.pushNamed(context, '/textField');
                },
              ),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('TextField赋值'),
                onPressed: () {
                  Navigator.pushNamed(context, '/textFieldAssignment');
                },
              ),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('CheckBox'),
                onPressed: () {
                  Navigator.pushNamed(context, '/checkBox');
                },
              ),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Radio'),
                onPressed: () {
                  Navigator.pushNamed(context, '/radio');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}