import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PageSwiper extends StatefulWidget {
  PageSwiper({Key key}) : super(key: key);

  @override
  _PageSwiperState createState() => _PageSwiperState();
}

class _PageSwiperState extends State<PageSwiper> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('swiper 组件'),
        ),
        body: Swiper(
          itemBuilder: (BuildContext context, int index) {
            precacheImage(NetworkImage(this._swiperItem[index]['imageURL']), context);
            return Image.network(this._swiperItem[index]['imageURL'],
                fit: BoxFit.fill);
          },
          itemCount: this._swiperItem.length,
        ),
      ),
    );
  }
}
