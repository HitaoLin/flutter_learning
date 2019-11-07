import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  final index;

  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabState(this.index);
  }
}

class _TabState extends State<Tabs> {
  int _currentIndex = 0;

  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  _TabState(index) {
    this._currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0, //阴影属性
        title: Text(
          'Flutter Demo',
          textDirection: TextDirection.ltr,
        ),
      ),
      body: this._pageList[this._currentIndex],
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.white),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(8),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: this._currentIndex == 1 ? Colors.blue : Colors.yellow,
          onPressed: () {
            setState(() {
              this._currentIndex = 1;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        //配置对应的索引值
        onTap: (int index) {
          print(index);
          setState(() {
            //改变状态
            this._currentIndex = index;
          });
        },
//        iconSize: 25.0,//icon的大小
//        fixedColor: Colors.deepOrange,
        //选中颜色
        type: BottomNavigationBarType.fixed,
        //配置tabs可以有多个按钮。
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('分类')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('设置')),
        ],
      ),
      drawer: Drawer(
        //左侧侧边栏
        child: Column(
          children: <Widget>[
//            DrawerHeader(
//              decoration: BoxDecoration(
//                  color: Colors.blue,
//                  image: DecorationImage(
//                      image: NetworkImage(
//                          "https://www.itying.com/images/flutter/2.png"),
//                      fit: BoxFit.cover)),
//            ),

            UserAccountsDrawerHeader(
              accountName: Text('小雪'),
              accountEmail: Text('1127141134@qq.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://www.itying.com/images/flutter/7.png'),
              ),
//              otherAccountsPictures: <Widget>[
//                CircleAvatar(
//                  backgroundImage: NetworkImage(
//                      'https://www.itying.com/images/flutter/3.png'),
//                )
//              ],
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.itying.com/images/flutter/2.png'),
                      fit: BoxFit.cover)),
            ),

//          Row(
//            children: <Widget>[
//              Expanded(child: DrawerHeader(
//                child: Text('你好Flutter'),
//              ))
//            ],
//          ),

            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的空间'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('用户中心'),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        //右侧侧边栏
        child: Text('右侧'),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  int countNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}
