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
        if (!mounted) {
          return;
        }
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
      ),
      body: Center(
        child: !controller.value.isInitialized
            ? Container()
            : CameraPreview(controller),
      ),
    );
  }
}
