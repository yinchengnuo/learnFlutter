import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../provider/ProviderApp.dart';
import '../../../provider/ProviderDevice.dart';

class TabHome extends StatefulWidget {
  TabHome({Key key}) : super(key: key);

  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> with AutomaticKeepAliveClientMixin {
  ProviderApp _$app;
  double opacityLevel = 1.0;
  final double rpx = ProviderDevice().rpx;
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      this._counter++;
      opacityLevel = opacityLevel == 1 ? 0.6 : 1.0;
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProviderApp())],
      child: Consumer<ProviderApp>(
        builder: (BuildContext context, ProviderApp _$app, Widget child) {
          this._$app = _$app;
          return AnimatedOpacity(
            // this._$app.pageHomeTabIndex == 0 ? 1.0 : 0.0
            opacity: opacityLevel,
            duration: Duration(milliseconds: 123),
            child: Scaffold(
              appBar: AppBar(
                title: Text('Flutter 官方实例计数器'),
              ),
              body: Container(
                alignment: Alignment(0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('点击按钮的次数'),
                    Text(this._counter.toString(), style: Theme.of(context).textTheme.display1),
                  ],
                ),
              ),
              floatingActionButton: Container(
                width: 66,
                height: 66,
                margin: EdgeInsets.all(4),
                child: FloatingActionButton(
                  elevation: 0,
                  onPressed: this._incrementCounter,
                  child: Icon(Icons.add, size: 56),
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: Container(
                margin: EdgeInsets.only(bottom: ProviderApp().pageHomeTabHeight * rpx),
                child: BottomAppBar(
                  elevation: 0,
                  color: Colors.pink[200],
                  shape: CircularNotchedRectangle(),
                  child: Container(height: ProviderApp().pageHomeTabHeight * rpx),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
