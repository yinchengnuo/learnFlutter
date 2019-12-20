import 'package:flutter/material.dart';

class AnimationWithoutWidgets extends StatefulWidget {
  AnimationWithoutWidgets({Key key}) : super(key: key);

  @override
  _AnimationWithoutWidgetsState createState() => _AnimationWithoutWidgetsState();
}

class _AnimationWithoutWidgetsState extends State<AnimationWithoutWidgets> with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;

  initState() {
    super.initState();
    this._animationController = AnimationController(
      duration: Duration(milliseconds: 123),
      vsync: this,
    );
    this._animation = Tween(begin: 123.0, end: 300.0).animate(this._animationController);
    this._animation.addListener(() {
      setState(() {});
    });
    this._animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(0, 0, 0, 0.3),
      height: this._animation.value,
      width: this._animation.value,
      child: GestureDetector(
        onTap: () {
          if (this._animation.status == AnimationStatus.dismissed) {
            this._animationController.forward();
          }
          if (this._animation.status == AnimationStatus.completed) {
            this._animationController.reverse();
          }
        },
        child: FlutterLogo(),
      ),
    );
  }
}
