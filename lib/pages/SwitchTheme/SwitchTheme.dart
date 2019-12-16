import 'package:flutter/material.dart';

class SwitchTheme extends StatefulWidget {
  SwitchTheme({Key key}) : super(key: key);

  @override
  _SwitchThemeState createState() => _SwitchThemeState();
}

class _SwitchThemeState extends State<SwitchTheme> {
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