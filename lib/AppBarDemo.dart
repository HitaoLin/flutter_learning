import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBarDemo'),
//          backgroundColor: Colors.deepOrange,
//        leading: IconButton(
//          icon: Icon(Icons.add),
//          onPressed: (){
//            print('add');
//          },
//        ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.print),
              onPressed: () {
                print('print');
              },
            ),
          ],

          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "热门",
              ),
              Tab(
                text: "推荐",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个Tab'),
                ),
                ListTile(
                  title: Text('第一个Tab'),
                ),
                ListTile(
                  title: Text('第一个Tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第二个Tab'),
                ),
                ListTile(
                  title: Text('第二个Tab'),
                ),
                ListTile(
                  title: Text('第二个Tab'),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
