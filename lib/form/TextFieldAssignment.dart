import 'package:flutter/material.dart';

class TextFiledAssignmentPage extends StatefulWidget{

  TextFiledAssignmentPage({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TextFiledAssignmentPageState();
  }

}

class TextFiledAssignmentPageState extends State<TextFiledAssignmentPage>{

  final _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _controller.addListener((){
      final text = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: text,
        selection:
          TextSelection(
            baseOffset: text.length,
            extentOffset: text.length
          ),
        composing: TextRange.empty,
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFiled赋值'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(6),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ),
    );
  }
}