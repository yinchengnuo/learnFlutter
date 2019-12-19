import 'package:flutter/material.dart';

class PageviewPage extends StatefulWidget {
  PageviewPage({Key key}) : super(key: key);

  @override
  _PageviewPageState createState() => _PageviewPageState();
}

class _PageviewPageState extends State<PageviewPage> {
  List<Map> _swiperItem = [
    {
      'imageURL': 'https://www.itying.com/images/flutter/1.png',
    },
    {
      'imageURL': 'https://www.itying.com/images/flutter/2.png',
    },
    {
      'imageURL': 'https://www.itying.com/images/flutter/3.png',
    },
    {
      'imageURL': 'https://www.itying.com/images/flutter/4.png',
    },
    {
      'imageURL': 'https://www.itying.com/images/flutter/5.png',
    },
  ];

  int _nowIndex = 0;
  bool _indexChanged = false;
  final _controller = PageController();
  double w;

  @override
  void initState() {

    this._swiperItem.forEach((item) {
      precacheImage(NetworkImage(item['imageURL']), context);
    });

    _controller.addListener(() {
      if (this._indexChanged &&
          (this._nowIndex - this._controller.offset.floor() / w.floor()).abs() <
              0.01) {
        setState(() => this._indexChanged = false);
        print('change动画结束');
      }
    });

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width; // 获取屏幕宽度

    return Scaffold(
      appBar: AppBar(
        title: Text('Pageview 组件'),
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        child: PageView.builder(
          controller: _controller,
          itemCount: this._swiperItem.length,
          onPageChanged: (index) {
            setState(() {
              this._nowIndex = index;
              this._indexChanged = true;
            });
          },
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage.assetNetwork(
              placeholder: 'lib/images/placeholder/douyin.jpg',
              image: this._swiperItem[index]['imageURL'],
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 12),
              fadeOutDuration: Duration(milliseconds: 12),
            );
          },
        ),
      ),
    );
  }
}
