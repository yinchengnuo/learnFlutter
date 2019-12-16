import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  IconPage({Key key}) : super(key: key);

  @override
  _IconPageState createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('各种 icon'),
      ),
      body: Wrap(
        children: <Widget>[
          ImageIcon(
            AssetImage('lib/images/homepage/home.png'),
            size: 56,
            color: Colors.black45,
          ),
          ImageIcon(
            AssetImage('lib/images/homepage/home-fill.png'),
            size: 56,
            color: Theme.of(context).accentColor,
          ),
          ImageIcon(
            AssetImage('lib/images/homepage/live.png'),
            size: 56,
            color: Colors.black45,
          ),
          ImageIcon(
            AssetImage('lib/images/homepage/live-fill.png'),
            size: 56,
            color: Theme.of(context).accentColor,
          ),
          ImageIcon(
            AssetImage('lib/images/homepage/video.png'),
            size: 56,
            color: Colors.black45,
          ),
          ImageIcon(
            AssetImage('lib/images/homepage/video-fill.png'),
            size: 56,
            color: Theme.of(context).accentColor,
          ),
          ImageIcon(
            AssetImage('lib/images/homepage/list.png'),
            size: 56,
            color: Colors.black45,
          ),
          ImageIcon(
            AssetImage('lib/images/homepage/list-fill.png'),
            size: 56,
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
