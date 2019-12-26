import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class PageCamera extends StatefulWidget {
  PageCamera({Key key}) : super(key: key);

  @override
  _PageCameraState createState() => _PageCameraState();
}

class _PageCameraState extends State<PageCamera> {
  List<CameraDescription> cameras;

  CameraController controller;

  Future<void> initCamera() async {
    this.cameras = await availableCameras();
  }

  @override
  void initState() {
    super.initState();
    this.initCamera().then((_) {
      controller = CameraController(cameras[0], ResolutionPreset.veryHigh);
      controller.initialize().then((_) {
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('相机'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.sync),
            onPressed: () {
              controller = CameraController(cameras[1], ResolutionPreset.veryHigh);
              controller.initialize().then((_) {
                setState(() {});
              });
            },
          )
        ],
      ),
      body: Center(
        child: controller == null || !controller.value.isInitialized
            ? Container(
                alignment: Alignment(0, 0),
                child: CircularProgressIndicator(),
              )
            : CameraPreview(controller),
      ),
    );
  }
}
