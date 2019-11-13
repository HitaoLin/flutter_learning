import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DatePickerPubPage extends StatefulWidget{

  DatePickerPubPage({Key key}):super(key : key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DatePickerPubPageState();
  }

}

class DatePickerPubPageState extends State<DatePickerPubPage>{

  DateTime _dateTime=DateTime.now();

  _showDatePicker(){
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse('1990-01-01'),
      maxDateTime: DateTime.parse('2200-01-01'),
      initialDateTime: _dateTime,
//      dateFormat: 'yyyy-MMMM-dd',

      dateFormat:'yyyy年M月d日    EEE,H时:m分',  // show TimePicker
      pickerMode: DateTimePickerMode.datetime,  // show TimePicker

      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () {
        print('onCancel');
      },
      onChange: (dateTime, List<int> index) {
        //不改变修改时间，这样取消才是原来的时间
//        setState(() {
//          _dateTime = dateTime;
//        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('第三方日期组件'),
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
                    Text("${formatDate(_dateTime, [yyyy, '年', mm, '月', dd,' ',HH, ':', nn])}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDatePicker,
              ),
            ],
          )
        ],
      ),
    );
  }
}