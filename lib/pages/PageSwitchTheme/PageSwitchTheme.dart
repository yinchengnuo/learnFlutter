import 'package:flutter/material.dart';

class PageSwitchTheme extends StatefulWidget {
  PageSwitchTheme({Key key}) : super(key: key);

  @override
  _PageSwitchThemeState createState() => _PageSwitchThemeState();
}

class _PageSwitchThemeState extends State<PageSwitchTheme> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.green
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('更改主题色'),
        ),
        body: Center(
          child: Text('更改主题色'),
        ),
      ),
    );
  }
}