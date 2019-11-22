import 'package:flutter/material.dart';
import 'package:amap_location/amap_location.dart';
import 'package:location_permissions/location_permissions.dart';

class LocationPage extends StatefulWidget{

  LocationPage({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LocationPageState();
  }

}

class LocationPageState extends State<LocationPage>{

  double _longitude = 0;
  double _latitude=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getLocation();
  }

  _getLocation() async{
    PermissionStatus permission1 =
    await LocationPermissions().requestPermissions(); //请求许可

    //启动一下
    await AMapLocationClient.startup(new AMapLocationOption( desiredAccuracy:CLLocationAccuracy.kCLLocationAccuracyHundredMeters  ));
    //获取地理位置
    var result = await AMapLocationClient.getLocation(true);
    print('经度：${result.longitude}\n纬度：${result.latitude}');
    setState(() {
      this._longitude = result.longitude;
      this._latitude = result.latitude;
    });
  }


  @override
  void dispose() {
    //注意这里关闭
    AMapLocationClient.shutdown();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
        centerTitle: true,
      ),
      body:Text('经度：${this._longitude}\n纬度：${this._latitude}') ,
    );
  }
}