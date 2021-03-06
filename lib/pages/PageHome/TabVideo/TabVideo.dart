import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../provider/ProviderApp.dart';
import '../../../provider/ProviderDevice.dart';
import 'package:video_player/video_player.dart';

class TabVideo extends StatefulWidget {
  TabVideo({Key key}) : super(key: key);

  @override
  _TabVideoState createState() => _TabVideoState();
}

class _TabVideoState extends State<TabVideo> with AutomaticKeepAliveClientMixin {
  ProviderApp _$app;
  final double rpx = ProviderDevice().rpx;

  bool _isTouching = false;
  bool _isVideoLoadded = false; // vidoe 是否加载完毕
  VideoPlayerController _videoController; // video 控制器

  List _swiperItems = List();
  // swiper 切换后 index
  int _swiperNowIndex = 0;
  // swiper 活动 index
  int _swiperActiveIndex = 0;
  // swiper 控制器
  final PageController _swpierController = PageController(
    initialPage: 0,
    viewportFraction: 0.999999999,
  );

  // 播放小视频方法
  void _playVideo() {
    this._videoController = VideoPlayerController.network(this._swiperItems[this._swiperNowIndex]['url']);
    this._videoController.setLooping(true);

    this._videoController.addListener(() {});
    this._videoController.initialize().then((_) {
      if (this._$app.pageHomeTabIndex == 2) {
        this._videoController.play();
        setState(() {
          this._isVideoLoadded = true;
        });
      }
    }).catchError((onError) {
      print('视频加载失败');
    });
  }

  //监听手指按下事件
  void _onPointerDown(_) {
    setState(() {
      this._isTouching = true;
    });
  }

  // 监听手指抬起事件
  void _onPointerUp(_) {
    setState(() {
      this._isTouching = false;
    });
    // 如果视频已经切换
    if (this._swiperActiveIndex != this._swiperNowIndex) {
      this._switchPlayVideo();
    }
  }

  // swiper 发生切换
  void _swiperChange(index) {
    setState(() {
      this._swiperActiveIndex = index;
    });
    // 如果手指已经抬起
    if (this._isTouching == false) {
      this._switchPlayVideo();
    }
  }

  // 切换视频播放
  void _switchPlayVideo() {
    setState(() {
      this._isVideoLoadded = false;
      this._videoController.dispose();
      this._swiperNowIndex = this._swiperActiveIndex;
      this._playVideo();
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if ((this._$app != null) && this._$app.pageHomeTabIndex == 2) {
      this._videoController.play();
    } else if ((this._$app != null) && this._$app.pageHomeTabIndex != 2) {
      this._videoController.pause();
    }
  }

  @override
  void initState() {
    super.initState();

    Dio().get("http://yinchengnuo.com/smallvideolist?page=1").then((onValue) {
      setState(() {
        this._swiperItems = onValue.data['data'];
      });
      this._playVideo();
    }).catchError((onError) {
      print(onError);
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProviderApp())],
      child: Scaffold(
        body: Consumer<ProviderApp>(
          builder: (BuildContext context, ProviderApp _$app, Widget child) {
            this._$app = _$app;
            return SafeArea(
              child: this._swiperItems.length == 0
                  ? Container(
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('lib/images/placeholder/douyin.jpg'),
                        fit: BoxFit.fill,
                      )),
                      child: CircularProgressIndicator(),
                    )
                  : PageView.builder(
                      controller: _swpierController,
                      scrollDirection: Axis.vertical,
                      itemCount: this._swiperItems.length,
                      onPageChanged: this._swiperChange,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                color: Colors.black,
                                alignment: Alignment(0, 0),
                                child: FadeInImage.assetNetwork(
                                  placeholder: 'lib/images/placeholder/douyin.jpg',
                                  image: this._swiperItems[index]['cover'],
                                  fadeInDuration: Duration(milliseconds: 12),
                                  fadeOutDuration: Duration(milliseconds: 12),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Listener(
                                onPointerUp: this._onPointerUp,
                                onPointerDown: this._onPointerDown,
                                child: Container(
                                  alignment: Alignment(0, 0),
                                  child: index == this._swiperNowIndex
                                      ? this._isVideoLoadded
                                          ? AspectRatio(
                                              aspectRatio: this._videoController.value.aspectRatio,
                                              child: VideoPlayer(this._videoController),
                                            )
                                          : CircularProgressIndicator()
                                      : CircularProgressIndicator(),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
            );
          },
        ),
        bottomNavigationBar: Container(height: ProviderApp().pageHomeTabHeight * rpx),
      ),
    );
  }
}
