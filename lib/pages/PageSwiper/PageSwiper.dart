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
          body: Container(
            margin: EdgeInsets.only(top: 8),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 123,
                  margin: EdgeInsets.only(bottom: 8),
                  child: Swiper(
                    index: 0,
                    scale: 0.8,
                    duration: 123,
                    autoplay: true,
                    viewportFraction: 0.6,
                    control: SwiperControl(),
                    itemCount: this._swiperItem.length,
                    pagination: SwiperPagination(),
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Image.network(
                          this._swiperItem[index]['imageURL'],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 123,
                  margin: EdgeInsets.only(bottom: 8),
                  child: Swiper(
                    index: 1,
                    scale: 0.8,
                    duration: 456,
                    autoplay: true,
                    viewportFraction: 0.6,
                    control: SwiperControl(),
                    itemCount: this._swiperItem.length,
                    pagination: SwiperPagination(),
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Image.network(
                          this._swiperItem[index]['imageURL'],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 123,
                  margin: EdgeInsets.only(bottom: 8),
                  child: Swiper(
                    index: 2,
                    scale: 0.8,
                    duration: 789,
                    autoplay: true,
                    viewportFraction: 0.6,
                    control: SwiperControl(),
                    itemCount: this._swiperItem.length,
                    pagination: SwiperPagination(),
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Image.network(
                          this._swiperItem[index]['imageURL'],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 123,
                  margin: EdgeInsets.only(bottom: 8),
                  child: Swiper(
                    index: 3,
                    scale: 0.8,
                    duration: 159,
                    autoplay: true,
                    viewportFraction: 0.6,
                    control: SwiperControl(),
                    itemCount: this._swiperItem.length,
                    pagination: SwiperPagination(),
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Image.network(
                          this._swiperItem[index]['imageURL'],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 123,
                  margin: EdgeInsets.only(bottom: 8),
                  child: Swiper(
                    index: 4,
                    scale: 0.8,
                    duration: 357,
                    autoplay: true,
                    viewportFraction: 0.6,
                    control: SwiperControl(),
                    itemCount: this._swiperItem.length,
                    pagination: SwiperPagination(),
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Image.network(
                          this._swiperItem[index]['imageURL'],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
