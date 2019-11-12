import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';


class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DatePickerPageState();
  }
}

class DatePickerPageState extends State<DatePickerPage> {
  var now = DateTime.now();

  DateTime _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 10);

//  _showDatePicker(){
//
//    showDatePicker(
//        context: context,
//        initialDate: _nowDate,
//        firstDate: DateTime(1980),
//        lastDate: DateTime(2100)
//    ).then((result){
//      print(result);
//    });
//
//  }

  _showDatePicker() async {
    var result = await showDatePicker(
        context: context,
        initialDate: _nowDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100),

    );

    print(result);

    setState(() {
      this._nowDate = result;
    });
  }

  __showTimePicker() async {
    var result = await showTimePicker(context: context, initialTime: _nowTime);

    setState(() {
      this._nowTime = result;
    });
    print(_nowTime);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print(now); //2019-11-11 12:03:10.527800

    print(now.millisecondsSinceEpoch); //1573473921763

    print(DateTime.fromMillisecondsSinceEpoch(
        1573473921763)); //2019-11-11 12:05:21.763

    //第三方库 pub.dev

    print(formatDate(
        DateTime.now(), [yyyy, '年', mm, '月', dd, '日'])); //2019年11月11日
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('日期选择'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
//                Text('2019-11-11'),
                    Text(
                        '${formatDate(_nowDate == null ? DateTime.now() : _nowDate, [
                      yyyy,
                      '年',
                      mm,
                      '月',
                      dd
                    ])}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
//            onTap: () {
//              print('打开日期组件');
//            },
                onTap: _showDatePicker,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
//                Text('2019-11-11'),
                    Text(_nowTime.format(context)),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
//            onTap: () {
//              print('打开日期组件');
//            },
                onTap: __showTimePicker,
              ),
            ],
          )
        ],
      ),
    );
  }
}
