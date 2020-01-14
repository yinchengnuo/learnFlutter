import 'FFmpeg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';

class PageFFmpeg extends StatefulWidget {
  PageFFmpeg({Key key}) : super(key: key);

  @override
  _PageFFmpegState createState() => _PageFFmpegState();
}

class _PageFFmpegState extends State<PageFFmpeg> {
  FlutterFFmpeg _ffmpeg;

  @override
  void initState() {
    super.initState();

    this._ffmpeg = FFmpeg();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FFmpeg'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('-f android_camera -i 0:0 -r 30 -pixel_format bgr0 -t 00:00:05 a.mp4'),
              onPressed: () {
                this._ffmpeg.execute('-f android_camera -i 0:0 -r 30 -pixel_format bgr0 -t 00:00:05 a.mp4').then((res) {
                  print(res);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
