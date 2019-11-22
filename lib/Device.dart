import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class DevicePage extends StatefulWidget{

  DevicePage({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DevicePageState();
  }

}

class DevicePageState extends State<DevicePage>{

  var result ='';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getDevice();
  }

    _getDevice() async{
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    print('设备号 ${androidInfo.androidId}');  // e.g. "Moto G (4)"
    setState(() {
      this.result = '设备号 ${androidInfo.androidId}';
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Device'),
        centerTitle: true,
      ),
      body:Text(this.result) ,
    );
  }
}