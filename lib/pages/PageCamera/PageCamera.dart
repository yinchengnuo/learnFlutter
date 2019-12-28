import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class PageCamera extends StatefulWidget {
  PageCamera({Key key}) : super(key: key);

  @override
  _PageCameraState createState() => _PageCameraState();
}

class _PageCameraState extends State<PageCamera> {
  int _cameraIndex = 0;
  List<CameraDescription> cameras;

  CameraController _cameraController;

  Future<void> initCamera() async {
    this.cameras = await availableCameras();
  }

  @override
  void initState() {
    super.initState();
    this.initCamera().then((_) {
      this._cameraController = CameraController(cameras[this._cameraIndex], ResolutionPreset.veryHigh);
      this._cameraController.initialize().then((_) {
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    this._cameraController?.dispose();
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
              this._cameraIndex == 0 ? this._cameraIndex = 1 : this._cameraIndex = 0;
              this._cameraController = CameraController(cameras[this._cameraIndex], ResolutionPreset.veryHigh);
              this._cameraController.initialize().then((_) {
                setState(() {});
              });
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          alignment: Alignment(0, 0),
          child: this._cameraController == null || !this._cameraController.value.isInitialized
              ? CircularProgressIndicator()
              : AspectRatio(
                  aspectRatio: this._cameraController.value.aspectRatio,
                  child: CameraPreview(this._cameraController),
                ),
        ),
      ),
    );
  }
}
