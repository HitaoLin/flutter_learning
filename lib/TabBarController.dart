import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabBarControllerPageState();
  }
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {//生命周期函数
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener((){
      print("tabController:${_tabController.index}");
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarController"),
        bottom: TabBar(
          controller: this._tabController,//注意
          tabs: <Widget>[
            Tab(text: "热门",),
            Tab(text: "推荐",),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,//注意
        children: <Widget>[
          Center(
            child: Text("热销"),
          ),
          Center(
            child: Text("推荐"),
          ),
        ],
      ),
    );
  }
}
