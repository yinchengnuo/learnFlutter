import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoplayPage extends StatefulWidget {
  VideoplayPage({Key key}) : super(key: key);

  @override
  _VideoplayPageState createState() => _VideoplayPageState();
}

class _VideoplayPageState extends State<VideoplayPage> {
  VideoPlayerController _controller;
  Future _initializeVideoPlayerFuture;
  String VIDEO_URL = 'https://www.runoob.com/try/demo_source/mov_bbb.mp4';
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(VIDEO_URL);
    _controller.setLooping(true);
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              print(snapshot.connectionState);
              if (snapshot.hasError) print(snapshot.error);
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  // aspectRatio: 16 / 9,
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          SizedBox(height: 30),
          RaisedButton(
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
            onPressed: () {
              setState(() {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  // If the video is paused, play it.
                  _controller.play();
                }
              });
            },
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
