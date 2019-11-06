import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CategoryPageState();
  }
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title:TabBar(
            tabs: <Widget>[
              Tab(text: "热门",),
              Tab(text: "推荐",),
            ],
          ) ,
//          bottom: ,
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
        ),
      ),
    );
  }
}
