import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class ConnectivityPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ConnectivityPageState();
  }
}

class ConnectivityPageState extends State<ConnectivityPage> {
  var subscription;
  String _stateText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // Got a new connectivity status!

      if (result == ConnectivityResult.wifi) {
        setState(() {
          _stateText = '处于wifi网络';
        });
      } else if (result == ConnectivityResult.mobile) {
        setState(() {
          _stateText = '处于手机网络';
        });
      } else {
        setState(() {
          _stateText = '没有网络';
        });
      }
    });
  }

  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('网络'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('${_stateText}'),
        ),
      ),
    );
  }
}
