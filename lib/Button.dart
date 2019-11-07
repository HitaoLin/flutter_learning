import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ButtonPageState();
  }
}

class ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮页面'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('FloatingActionButton');
        },
      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,//位置居中
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: () {},
              ),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('有颜色按钮'),
                onPressed: () {},
              ),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                elevation: 30,
                //阴影效果
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('有阴影按钮'),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 50,
                child: RaisedButton(
                  elevation: 20,
                  //阴影效果
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('改变宽高按钮'),
                  onPressed: () {
                    print('改变宽高按钮');
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 40,
                  margin: EdgeInsets.all(20),
                  child: RaisedButton(
                    elevation: 20,
                    //阴影效果
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('自适应按钮'),
                    onPressed: () {
                      print('自适应按钮');
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  RaisedButton.icon(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        print('有图标按钮');
                      },
//                      onPressed:null,//禁止点击
                      icon: Icon(Icons.search),
                      label: Text('有图标按钮')),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                elevation: 20,
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('圆角按钮'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  print('圆角按钮');
                },
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 80,
                child: RaisedButton(
                  elevation: 20,
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('圆形按钮'),
                  shape: CircleBorder(side: BorderSide(color: Colors.white)),
                  onPressed: () {
                    print('圆形按钮');
                  },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("扁平按钮"),
                onPressed: () {
                  print('扁平按钮');
                },
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
//                color: Colors.red,//没有效果（线框按钮是没有背景的）
                textColor: Colors.blue,
                borderSide: new BorderSide(color: Colors.blue),
                //边框颜色
                child: Text('线框按钮'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  print('线框按钮');
                },
              ),
              SizedBox(
                width: 20,
              ),
              MyButton(
                text: '自定义按钮',
                pressed: () {
                  print('自定义按钮');
                },
                width: 150,
                height: 20,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('注册'),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('登录'),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

//自定义按钮组件
class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double height;

  MyButton(
      {this.text = "", this.pressed = null, this.width = 80, this.height = 30});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
