import 'package:flutter/material.dart';

class DismissiblePage extends StatefulWidget{

  DismissiblePage({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DismissiblePageState();
  }

}

class DismissiblePageState extends State<DismissiblePage>{

  //构建30条列表数据
  List<String> items = new List<String>.generate(30, (i) => '列表项${i+1}');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('滑动删除'),
        centerTitle: true,
      ),
      //构建列表
      body: new  ListView.builder(
        itemCount: items.length,//指定列表长度
        itemBuilder: (context,index){
          //提取出被删除的项
          final item = items[index];

          //返回一个可以被删除的列表项
          return Dismissible(
            key: Key(item),
            //被删除回调
            onDismissed: (direction){
              //移动指定索引项
              items.removeAt(index);
              //底部弹出消息提示当前项被删除了
              Scaffold.of(context).showSnackBar(SnackBar(content: Text('$item被删除了')));
            },
            child: new ListTile(title: Text('$item'),),
          );
        },
      ),
    );
  }
}