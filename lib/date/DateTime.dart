import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateTimePage extends StatefulWidget {
  DateTimePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DateTimePageState();
  }
}

class DateTimePageState extends State<DateTimePage> {
  //当前时间
  static var now = new DateTime.now();
  var timeStamp = now.millisecondsSinceEpoch;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('日期组件'),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //解决Text不对齐问题
            children: <Widget>[
              //单位毫秒，13位时间戳
//              Text('日期转时间戳\n当前时间：${now}\n时间戳：${now.millisecondsSinceEpoch}\n'),
              Text('时间戳转化成日期\n当前时间戳：${timeStamp}\n日期：${DateTime.fromMillisecondsSinceEpoch(timeStamp)}\n'),
              Text('第三方库 date_format 1.0.8\nhttps://pub.dev/packages/date_form' ),
              Text(formatDate(DateTime(2019, 11, 09), [yyyy, '-', mm, '-', dd])),
              Text(formatDate(DateTime(2019, 11, 09), [yy, '-', M, '-', d])),
              Text(formatDate(DateTime(2019, 11, 09,16, 59, 10), [HH, ':', nn, ':', ss])),
              Text(formatDate(DateTime(2019, 11, 09, 16, 59, 10), [HH, ':', nn, ':', ss, z])),
              Center(
                child: Row(
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text('跳转到日期页面'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/datePicker');
//              Navigator.pushNamed(context, '/search');
                      },
                    ),
                    SizedBox(width: 20,),
                    RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text('第三方日期插件的使用'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/datePickerPub');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

//      body: Column(
//        children: <Widget>[
//          Text('日期转时间戳\n当前时间：${now}\n时间戳：${now.millisecondsSinceEpoch}\n'),
//          //单位毫秒，13位时间戳
//          Text(
//              '时间戳转化成日期\n当前时间戳：${timeStamp}\n日期：${DateTime.fromMillisecondsSinceEpoch(timeStamp)}\n'),
//          Text(formatDate(DateTime(1989, 02, 21), [yyyy, '-', mm, '-', dd])),
//        ],
//      ),
    );
  }
}


//class DateTimePageState extends State<DateTimePage> {
//  DateTime _nowDate =DateTime.now();
//
//  var _nowTime=TimeOfDay(hour: 12,minute:20 );
//
//  _showDatePicker() async{
//
//    //  showDatePicker(
//    //    context:context,
//    //    initialDate:_nowDate,
//    //    firstDate:DateTime(1980),
//    //    lastDate:DateTime(2100),
//    //  ).then((result){
//    //     print(result);
//    //  });
//
//    var result= await showDatePicker(
//      context:context,
//      initialDate:_nowDate,
//      firstDate:DateTime(1980),
//      lastDate:DateTime(2100),
//      //  locale: Locale('zh'),      //非必须
//    );
//
//    //  print(result);
//
//    setState(() {
//      this._nowDate= result;
//    });
//
//  }
//
//  _showTimePicker() async{
//
//    var result= await showTimePicker(
//        context:context,
//        initialTime: _nowTime
//    );
//    setState(() {
//      this._nowTime= result;
//    });
//
//  }
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//
//    //  var now =DateTime.now();
//    // print(now);  //2019-06-08 12:08:10.140421
//
//    // print(now.millisecondsSinceEpoch);  //1559967090998
//
//
//    /// print(DateTime.fromMillisecondsSinceEpoch(1559967090998));  //2019-06-08 12:11:30.998
//
//    // 2019-06-08   2019/06/08   2019年06月08
//
//    // print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));    //2019年06月08
//
//
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('日期组件'),
//        centerTitle: true,
//      ),
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              InkWell(
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Text("${formatDate(_nowDate, [yyyy, '年', mm, '月', dd])}"),
//                    Icon(Icons.arrow_drop_down)
//                  ],
//                ),
//                onTap: _showDatePicker,
//              ),
//              InkWell(
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Text("${_nowTime.format(context)}"),
//                    Icon(Icons.arrow_drop_down)
//                  ],
//                ),
//                onTap: _showTimePicker,
//              )
//            ],
//          )
//        ],
//      ),
//    );
//  }
//}
