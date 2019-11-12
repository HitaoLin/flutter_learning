import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SwiperPageState();
  }
}

class SwiperPageState extends State<SwiperPage> {
  List<Map> imgList = [
    {
      "url": 'https://www.itying.com/images/flutter/1.png',
    },
    {
      "url": 'https://www.itying.com/images/flutter/2.png',
    },
    {
      "url": 'https://www.itying.com/images/flutter/3.png',
    },
    {
      "url": 'https://www.itying.com/images/flutter/4.png',
    },
    {
      "url": 'https://www.itying.com/images/flutter/5.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图组件'),
        centerTitle: true,
      ),
//      body:  new Swiper(
//        itemBuilder: (BuildContext context,int index){
//          return new Image.network(imgList[index]["url"],fit: BoxFit.fill,);
//        },
//        itemCount: imgList.length,
//        pagination: new SwiperPagination(),//展示默认分页指示器
////        control: new SwiperControl(),//展示默认分页按钮
//      ),
      body: Column(
        children: <Widget>[
          Container(
//            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 16/9,
              child: new Swiper(
                loop: true,
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    imgList[index]["url"],
                    fit: BoxFit.fitWidth,
                  );
                },
                itemCount: imgList.length,
                pagination: new SwiperPagination(), //展示默认分页指示器
//        control: new SwiperControl(),//展示默认分页按钮
              ),
            )
          ),
          Row(
            children: <Widget>[
              Text('我是一个文本')
            ],
          )
        ],
      ),
    );
  }
}
