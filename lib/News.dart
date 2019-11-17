import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewsPageState();
  }
}

class NewsPageState extends State<NewsPage> {
  List list = [];
  int _page = 1;
  bool hasMore = true; //判断有没有数据
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getData();

    //监听滚动条事件
    _scrollController.addListener(() {
      print(_scrollController.position.pixels); //获取滚动条下拉的距离
      print(_scrollController.position.maxScrollExtent); //获取整个页面的高度

      if (_scrollController.position.pixels >
          _scrollController.position.maxScrollExtent - 40) {
        this._getData();
      }
    });
  }

  void _getData() async {
    if (this.hasMore) {
      var apiUrl =
          "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=${_page}";
      var response = await Dio().get(apiUrl);
      var res = json.decode(response.data)["result"];
      setState(() {
        this.list.addAll(res); //拼接
        this._page++;
      });
      //判断是否是最后一页
      if (res.length < 20) {
        setState(() {
          this.hasMore = false;
        });
      }
    }
  }

  Future<void> _onRefresh() async {
    print("上拉刷新");
    await Future.delayed(Duration(milliseconds: 2000), () {
      print('请求数据完成');
      _page = 1;
      list = [];
      _getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('新闻列表'),
        centerTitle: true,
      ),
      body: this.list.length > 0
          ? RefreshIndicator(
              onRefresh: _onRefresh,
              child: ListView.builder(
                  controller: _scrollController,
                  itemCount: this.list.length,
                  itemBuilder: (context, index) {
                    if (index == this.list.length - 1) {
                      //列表渲染到最后一条加一个圈圈
                      //拉到底
                      return Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "${this.list[index]["title"]}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Divider(),
                          _getMoreWidget(),
                        ],
                      );
                    } else {
                      return Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "${this.list[index]["title"]}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Divider(),
                        ],
                      );
                    }
                  }),
            )
          : _getMoreWidget(),
    );
  }

//  加载中的圈圈
  Widget _getMoreWidget() {
    if (hasMore) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '加载中...',
                style: TextStyle(fontSize: 16.0),
              ),
              CircularProgressIndicator(
                strokeWidth: 1.0,
              )
            ],
          ),
        ),
      );
    } else {
      return Center(
        child: Text('--我是有底线的--'),
      );
    }
  }

}
