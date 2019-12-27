import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/ProviderWaterfall.dart';

class PageFlow extends StatefulWidget {
  PageFlow({Key key}) : super(key: key);

  @override
  _PageFlowState createState() => _PageFlowState();
}

class _PageFlowState extends State<PageFlow> {
  double rpx = 0.545;
  List<Widget> _list;
  ProviderWaterfall _$waterfall;

  @override
  void initState() {
    super.initState();

    this._list = [
      Container(width: 375 * this.rpx, height: 100, color: Colors.yellow, alignment: Alignment(0, 0), child: Text('1')),
      Container(width: 375 * this.rpx, height: 120, color: Colors.green, alignment: Alignment(0, 0), child: Text('2')),
      Container(width: 375 * this.rpx, height: 200, color: Colors.red, alignment: Alignment(0, 0), child: Text('3')),
      Container(width: 375 * this.rpx, height: 160, color: Colors.black38, alignment: Alignment(0, 0), child: Text('4')),
      Container(width: 375 * this.rpx, height: 180, color: Colors.blue, alignment: Alignment(0, 0), child: Text('5')),
      Container(width: 375 * this.rpx, height: 200, color: Colors.lightGreenAccent, alignment: Alignment(0, 0), child: Text('6')),
      Container(width: 375 * this.rpx, height: 200, color: Colors.yellow, alignment: Alignment(0, 0), child: Text('1')),
      Container(width: 375 * this.rpx, height: 220, color: Colors.green, alignment: Alignment(0, 0), child: Text('2')),
      Container(width: 375 * this.rpx, height: 200, color: Colors.red, alignment: Alignment(0, 0), child: Text('3')),
      Container(width: 375 * this.rpx, height: 260, color: Colors.black38, alignment: Alignment(0, 0), child: Text('4')),
      Container(width: 375 * this.rpx, height: 280, color: Colors.blue, alignment: Alignment(0, 0), child: Text('5')),
      Container(width: 375 * this.rpx, height: 300, color: Colors.lightGreenAccent, alignment: Alignment(0, 0), child: Text('6')),
    ];

    Future.delayed(Duration(seconds: 6)).then((_) {
      setState(() {
        print('123');
        this._list = [
          Container(width: 375 * this.rpx, height: 100, color: Colors.yellow, alignment: Alignment(0, 0), child: Text('1')),
          Container(width: 375 * this.rpx, height: 120, color: Colors.green, alignment: Alignment(0, 0), child: Text('2')),
          Container(width: 375 * this.rpx, height: 200, color: Colors.red, alignment: Alignment(0, 0), child: Text('3')),
          Container(width: 375 * this.rpx, height: 160, color: Colors.black38, alignment: Alignment(0, 0), child: Text('4')),
          Container(width: 375 * this.rpx, height: 180, color: Colors.blue, alignment: Alignment(0, 0), child: Text('5')),
          Container(width: 375 * this.rpx, height: 200, color: Colors.lightGreenAccent, alignment: Alignment(0, 0), child: Text('6')),
          Container(width: 375 * this.rpx, height: 200, color: Colors.yellow, alignment: Alignment(0, 0), child: Text('1')),
          Container(width: 375 * this.rpx, height: 220, color: Colors.green, alignment: Alignment(0, 0), child: Text('2')),
          Container(width: 375 * this.rpx, height: 200, color: Colors.red, alignment: Alignment(0, 0), child: Text('3')),
          Container(width: 375 * this.rpx, height: 260, color: Colors.black38, alignment: Alignment(0, 0), child: Text('4')),
          Container(width: 375 * this.rpx, height: 280, color: Colors.blue, alignment: Alignment(0, 0), child: Text('5')),
          Container(width: 375 * this.rpx, height: 300, color: Colors.lightGreenAccent, alignment: Alignment(0, 0), child: Text('6')),
          Container(width: 375 * this.rpx, height: 100, color: Colors.yellow, alignment: Alignment(0, 0), child: Text('1')),
          Container(width: 375 * this.rpx, height: 120, color: Colors.green, alignment: Alignment(0, 0), child: Text('2')),
          Container(width: 375 * this.rpx, height: 200, color: Colors.red, alignment: Alignment(0, 0), child: Text('3')),
          Container(width: 375 * this.rpx, height: 160, color: Colors.black38, alignment: Alignment(0, 0), child: Text('4')),
          Container(width: 375 * this.rpx, height: 180, color: Colors.blue, alignment: Alignment(0, 0), child: Text('5')),
          Container(width: 375 * this.rpx, height: 200, color: Colors.lightGreenAccent, alignment: Alignment(0, 0), child: Text('6')),
          Container(width: 375 * this.rpx, height: 200, color: Colors.yellow, alignment: Alignment(0, 0), child: Text('1')),
          Container(width: 375 * this.rpx, height: 220, color: Colors.green, alignment: Alignment(0, 0), child: Text('2')),
          Container(width: 375 * this.rpx, height: 200, color: Colors.red, alignment: Alignment(0, 0), child: Text('3')),
          Container(width: 375 * this.rpx, height: 260, color: Colors.black38, alignment: Alignment(0, 0), child: Text('4')),
          Container(width: 375 * this.rpx, height: 280, color: Colors.blue, alignment: Alignment(0, 0), child: Text('5')),
          Container(width: 375 * this.rpx, height: 300, color: Colors.lightGreenAccent, alignment: Alignment(0, 0), child: Text('6')),
        ];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      this.rpx = MediaQuery.of(context).size.width / 750.1; // 适配单位宽度
    });

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderWaterfall()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flow 瀑布流'),
        ),
        body: Consumer<ProviderWaterfall>(
          builder: (BuildContext context, ProviderWaterfall _$waterfall, Widget child) {
            this._$waterfall = _$waterfall;
            return SingleChildScrollView(
              child: Container(
                height: this._$waterfall.height,
                alignment: Alignment(0, 0),
                child: Flow(
                  delegate: TestFlowDelegate(this._$waterfall),
                  children: this._list,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  final _$waterfall;
  double _left = 0;
  double _leftH = 0; // 左列高
  double _rightH = 0;

  TestFlowDelegate(this._$waterfall); // 右列高

  @override
  void paintChildren(FlowPaintingContext context) {
    for (int i = 0; i < context.childCount; i++) {
      if ((this._left + context.getChildSize(i).width) < context.size.width) {
        context.paintChild(i, transform: Matrix4.translationValues(this._left, i % 2 == 0 ? this._leftH : this._rightH, 0.0));
      } else {
        this._left = 0;
        context.paintChild(i, transform: Matrix4.translationValues(this._left, this._leftH, 0.0));
      }
      this._left += context.getChildSize(i).width;
      i % 2 == 0 ? this._leftH += context.getChildSize(i).height : this._rightH += context.getChildSize(i).height;
      if (i == context.childCount - 1) {
        this._$waterfall.setHeight(this._leftH > this._rightH ? this._leftH : this._rightH);
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
