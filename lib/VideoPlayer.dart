//import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
//import 'package:chewie/chewie.dart';
//
//class VideoPlayerPage extends StatefulWidget {
//  VideoPlayerPage({Key key}) : super(key: key);
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return VideoPlayerPageState();
//  }
//}
//
//class VideoPlayerPageState extends State<VideoPlayerPage> {
//
//  VideoPlayerController videoPlayerController;
//  ChewieController chewieController;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//
//    videoPlayerController = VideoPlayerController.network(
//        'http://vfx.mtime.cn/Video/2019/02/04/mp4/190204084208765161.mp4');
//
//    chewieController = ChewieController(
//      videoPlayerController: videoPlayerController,
//      aspectRatio: 5 / 2,
//      autoPlay: true,
//      looping: true,
//    );
//  }
///*销毁*/
//  @override
//  void dispose() {
//    videoPlayerController.dispose();
//    chewieController.dispose();
//    super.dispose();
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('VideoPlayer'),
//        centerTitle: true,
//      ),
//      body:
////      Text('VideoPlayer')
//      Chewie(
//        controller: chewieController,
//      )
//    );
//  }
//}


//import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
//import 'package:chewie/chewie.dart';
//
//
//class VideoPlayerPage extends StatefulWidget {
//  VideoPlayerPage({Key key}) : super(key: key);
//
//  _VideoPlayerPageState createState() => _VideoPlayerPageState();
//}
//
//class _VideoPlayerPageState extends State<VideoPlayerPage> {
//
//  VideoPlayerController videoPlayerController;
//  ChewieController chewieController;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//
//    videoPlayerController = VideoPlayerController.network(
//        'http://vfx.mtime.cn/Video/2019/02/04/mp4/190204084208765161.mp4');
//
//    chewieController = ChewieController(
//      videoPlayerController: videoPlayerController,
//      aspectRatio: 3 / 2,
//      autoPlay: true,
//      looping: true,
//    );
//
//
//  }
//  /*销毁*/
//  @override
//  void dispose() {
//    videoPlayerController.dispose();
//    chewieController.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('在线视频播放'),
//      ),
//      body: Center(
//          child: Chewie(
//            controller: chewieController,
//          )
//      ),
//    );
//  }
//}
