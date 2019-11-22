import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ImagePickerPageState();
  }
}

class ImagePickerPageState extends State<ImagePickerPage> {

  File _image;

  //拍照
  _takePhoto() async {
    var image = await ImagePicker.pickImage(
        source: ImageSource.camera, maxWidth: 400,maxHeight: 400);

    setState(() {
      this._image = image;
    });

    this._uploadImage(_image);
  }

  //相册
  _openGallery() async {
    var image = await ImagePicker.pickImage(
        source: ImageSource.gallery, maxWidth: 400,maxHeight: 400);
    setState(() {
      this._image = image;
    });
  }

  //定义一个组件显示图片
  Widget _buildImage() {
    if (this._image == null) {
      return Text('请选择图片...');
    }
    return Image.file(this._image);
  }

  //上传图片
  _uploadImage(_imageDir) async{
    FormData formData = FormData.from({
      "name": "wendux",
      "age": 25,
      "file": new UploadFileInfo(_imageDir, 'xxx.jpg'),
    });
    
    var response = await Dio().post("http://jd.itying.com/imgupload", data: formData);
    print(response);

    //"path":"/public\\upload\\LBuYr-qFtGfoGg_vuzjR7BoI.jpg"
    //http://jd.itying.com/public/upload/LBuYr-qFtGfoGg_vuzjR7BoI.jpg
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ImagePicker'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('拍照'),
            onPressed: _takePhoto,
          ),
          SizedBox(width: 20,),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('选择图库照片'),
            onPressed: _openGallery,
          ),
          SizedBox(width: 20,),
          _buildImage(),
        ],
      ),
    );
  }
}