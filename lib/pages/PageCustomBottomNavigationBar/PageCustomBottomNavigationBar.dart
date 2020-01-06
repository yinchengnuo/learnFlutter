import 'package:flutter/material.dart';
import 'fancy_tab_bar.dart';
import 'tab_item.dart';

class PageCustomBottomNavigationBar extends StatefulWidget {
  PageCustomBottomNavigationBar({Key key}) : super(key: key);

  @override
  _PageCustomBottomNavigationBarState createState() => _PageCustomBottomNavigationBarState();
}

class _PageCustomBottomNavigationBarState extends State<PageCustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: PURPLE,
        title: Text("Tab Bar Animation"),
      ),
      bottomNavigationBar: FancyTabBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}
