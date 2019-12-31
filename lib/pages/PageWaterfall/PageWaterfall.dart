import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../provider/ProviderDevice.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PageWaterfall extends StatefulWidget {
  PageWaterfall({Key key}) : super(key: key);

  @override
  _PageWaterfallState createState() => _PageWaterfallState();
}

class _PageWaterfallState extends State<PageWaterfall> {
  ScrollController _scrollController = ScrollController();
  final double rpx = ProviderDevice().rpx;
  List _list = List();

  // 下拉刷新数据
  Future<Null> _refreshData() async {
    await Future.delayed(Duration(seconds: 3));
  }

  Widget _renderItem(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: CachedNetworkImage(
              imageUrl: this._list[index]['cover'],
              fadeInDuration: Duration(milliseconds: 0),
              fadeOutDuration: Duration(milliseconds: 123),
              placeholder: (context, url) => Image.asset('lib/images/placeholder/loading.gif'),
              errorWidget: (context, url, error) => Image.asset('lib/images/placeholder/loading.gif'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8 * rpx),
            child: Text(
              this._list[index]['name'],
              style: TextStyle(
                height: 1.6,
                fontSize: 32 * rpx,
                color: Colors.white,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Dio().get("http://yinchengnuo.com/smallvideolist?page=1").then((onValue) {
      setState(() {
        this._list = onValue.data['data'];
      });
    }).catchError((onError) {
      print(onError);
    });
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage('lib/images/placeholder/douyin.jpg'), context);
    precacheImage(AssetImage('lib/images/placeholder/loading.gif'), context);

    return Scaffold(
      appBar: AppBar(
        title: Text('瀑布流'),
      ),
      body: Container(
        alignment: Alignment(0, 0),
        padding: EdgeInsets.all(8 * rpx),
        child: this._list.length == 0
            ? CircularProgressIndicator()
            : RefreshIndicator(
                onRefresh: _refreshData,
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12 * rpx,
                  crossAxisSpacing: 8 * rpx,
                  itemCount: this._list.length,
                  physics: ClampingScrollPhysics(),
                  controller: this._scrollController,
                  staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
                  itemBuilder: (BuildContext context, int index) {
                    return index == this._list.length - 1
                        ? Column(
                            children: <Widget>[
                              this._renderItem(index),
                              Container(
                                height: 66,
                                child: CircularProgressIndicator(),
                              )
                            ],
                          )
                        : this._renderItem(index);
                  },
                ),
              ),
      ),
    );
  }
}
