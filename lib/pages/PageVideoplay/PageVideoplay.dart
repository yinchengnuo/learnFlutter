import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PageVideoplay extends StatefulWidget {
  PageVideoplay({Key key}) : super(key: key);

  @override
  _PageVideoplayState createState() => _PageVideoplayState();
}

class _PageVideoplayState extends State<PageVideoplay> {
  bool _isVideoLoadded = false;
  VideoPlayerValue _value;
  VideoPlayerController _controller;
  String VIDEO_URL =
      'https://img.cdn.aliyun.dcloud.net.cn/guide/uniapp/%E7%AC%AC1%E8%AE%B2%EF%BC%88uni-app%E4%BA%A7%E5%93%81%E4%BB%8B%E7%BB%8D%EF%BC%89-%20DCloud%E5%AE%98%E6%96%B9%E8%A7%86%E9%A2%91%E6%95%99%E7%A8%8B@20181126.mp4';

  @override
  void initState() {
    super.initState();
    this._controller = VideoPlayerController.network(VIDEO_URL);
    this._controller.addListener(() {
      setState(() => this._value = this._controller.value);
    });
    this._controller.initialize().then((_) {
      this._controller.play();
      this._isVideoLoadded = true;
    }).catchError((onError) {
      print('视频加载失败');
    });
  }

  @override
  void dispose() {
    super.dispose();
    this._controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('视频播放'),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment(0, 0),
                height: 234,
                child: this._isVideoLoadded
                    ? VideoPlayer(this._controller)
                    : CircularProgressIndicator(),
              ),
              RaisedButton(
                child: Icon(
                  this._controller.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow,
                ),
                onPressed: () {
                  setState(() => this._controller.value.isPlaying
                      ? this._controller.pause()
                      : this._controller.play());
                },
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('duration'),
                  Text(this._value?.duration.toString())
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('size'),
                  Text(this._value?.size.toString())
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('position'),
                  Text(this._value?.position.toString())
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('buffered'),
                  Text(this._value?.buffered.toString())
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('isPlaying'),
                  Text(this._value?.isPlaying.toString())
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('isLooping'),
                  Text(this._value?.isLooping.toString())
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('isBuffering'),
                  Text(this._value?.isBuffering.toString())
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('volume'),
                  Text(this._value?.volume.toString())
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('errorDescription'),
                  Text(this._value?.errorDescription.toString())
                ],
              ),
            ],
          ),
        ));
  }
}
