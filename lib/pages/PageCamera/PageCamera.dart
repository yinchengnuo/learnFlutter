import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class PageCamera extends StatefulWidget {
  PageCamera({Key key}) : super(key: key);

  @override
  _PageCameraState createState() => _PageCameraState();
}

class _PageCameraState extends State<PageCamera> {
  int _cameraIndex = 1;
  get isCameraInited => this._cameraController == null || !this._cameraController.value.isInitialized;
  List<CameraDescription> cameras;

  CameraController _cameraController;

  Future<void> initCamera() async {
    this.cameras = await availableCameras();
  }

  @override
  void initState() {
    super.initState();
    this.initCamera().then((_) {
      this._cameraController = CameraController(cameras[this._cameraIndex], ResolutionPreset.max);
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
    final size = MediaQuery.of(context).size;
    print(MediaQuery.of(context));
    final deviceRatio = size.width / size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).padding.top,
            color: Colors.blue,
            child: null,
          ),
          Flexible(
            flex: 1,
            child: ClipRRect(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Transform.scale(
                    scale: this.isCameraInited ? 1 : this._cameraController.value.aspectRatio / deviceRatio,
                    child: Center(
                      child: this.isCameraInited
                          ? CircularProgressIndicator()
                          : AspectRatio(
                              aspectRatio: this._cameraController.value.aspectRatio,
                              child: CameraPreview(this._cameraController),
                            ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    height: 60,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.sync),
                            color: Colors.white,
                            onPressed: () {
                              this._cameraIndex == 0 ? this._cameraIndex = 1 : this._cameraIndex = 0;
                              this._cameraController = CameraController(cameras[this._cameraIndex], ResolutionPreset.veryHigh);
                              this._cameraController.initialize().then((_) {
                                setState(() {});
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
