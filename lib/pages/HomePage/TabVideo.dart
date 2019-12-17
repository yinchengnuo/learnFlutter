import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TabVideo extends StatefulWidget {
  TabVideo({Key key}) : super(key: key);

  @override
  _TabVideoState createState() => _TabVideoState();
}

class _TabVideoState extends State<TabVideo> {
  int _activeInex = 0;
  List _swiperItems = List();
  List _controllers = List();

  @override
  void initState() {
    super.initState();

    Dio().get("http://yinchengnuo.com/smallvideolist?page=1").then((onValue) {
      setState(() {
        this._swiperItems = onValue.data['data'];
        this._controllers = this._swiperItems.map((item) {
          return VideoPlayerController.network(item['url'])
            ..initialize().then((_) {
              setState(() {});
            });
        }).toList();
      });
    }).catchError((onError) {
      print(onError);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Swiper(
      scrollDirection: Axis.vertical,
      itemCount: this._swiperItems.length,
      onIndexChanged: (int index) {
        setState(() {
          this._activeInex = index;
        });
      },
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(this._swiperItems[index]['cover']),
                  fit: BoxFit.cover)),
          child: VideoPlayer(this._controllers[index]),
        );
      },
    );
  }
}
