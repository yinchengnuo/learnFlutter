import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/ProviderApp.dart';
import 'package:video_player/video_player.dart';

class TabVideo extends StatefulWidget {
  bool isShow;
  TabVideo({Key key, this.isShow}) : super(key: key);

  @override
  _TabVideoState createState() => _TabVideoState(this.isShow);
}

class _TabVideoState extends State<TabVideo> with AutomaticKeepAliveClientMixin {
  bool isShow;
  _TabVideoState(bool isShow);

  ProviderApp _$app;

  bool _isVideoLoadded = false; // vidoe 是否加载完毕
  VideoPlayerController _videoController; // video 控制器

  List _swiperItems = List();
  double _swiperSize; // swiper 主轴方向尺寸
  int _swiperNowIndex = 0; // swiper 切换后 index
  int _swiperActiveIndex = 0; // swiper 活动 index
  bool _isSwiperIndexChanged = false; // swiper index 是否发生改变
  final _swpierController = PageController(viewportFraction: 0.99999999 ); // swiper 控制器

  _playVideo() {
    // 播放小视频方法
    this._videoController = VideoPlayerController.network(
        this._swiperItems[this._swiperNowIndex]['url']);
    this._videoController.setLooping(true);
    this._videoController.addListener(() {});
    this._videoController.initialize().then((_) {
      this._videoController.play();
      setState(() {
        this._isVideoLoadded = true;
      });
    }).catchError((onError) {
      print('视频加载失败');
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(TabVideo oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
    (this._$app.pageHomeTabIndex == 2) ? this._videoController.play() : this._videoController.pause();
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  void initState() {
    super.initState();

    this._swpierController.addListener(() {
      if (this._isSwiperIndexChanged &&
          (this._swiperActiveIndex -
                      this._swpierController.offset.floor() /
                          this._swiperSize.floor())
                  .abs() <
              0.01) {
        setState(() {
          this._isVideoLoadded = false;
          this._videoController.dispose();
          this._isSwiperIndexChanged = false;
          this._swiperNowIndex = this._swiperActiveIndex;
          this._playVideo();
        });
      }
    });

    Dio().get("http://yinchengnuo.com/smallvideolist?page=1").then((onValue) {
      // 请求小视频数据
      setState(() {
        this._swiperItems = onValue.data['data']; // 保存小视频数据
      });
      this._playVideo();
    }).catchError((onError) {
      print(onError);
    });
  }

  @override
  Widget build(BuildContext context) {
    _$app = Provider.of<ProviderApp>(context);
    _swiperSize = MediaQuery.of(context).size.height; // 获取屏幕高度


    return PageView.builder(
      controller: _swpierController,
      scrollDirection: Axis.vertical,
      itemCount: this._swiperItems.length,
      onPageChanged: (index) {
        setState(() {
          this._swiperActiveIndex = index;
          this._isSwiperIndexChanged = true;
        });
      },
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              child: FadeInImage.assetNetwork(
                placeholder: 'lib/images/placeholder/douyin.jpg',
                image: this._swiperItems[index]['cover'],
                fit: BoxFit.cover,
                fadeInDuration: Duration(milliseconds: 12),
                fadeOutDuration: Duration(milliseconds: 12),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment(0, 0),
              child: index == this._swiperNowIndex
                  ? this._isVideoLoadded
                      ? VideoPlayer(this._videoController)
                      : CircularProgressIndicator()
                  : null,
            ),
          ],
        );
      },
    );
  }
}
