import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'package:uuid/uuid.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as Path;
import 'package:path_provider/path_provider.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class PageCamera extends StatefulWidget {
  PageCamera({Key key}) : super(key: key);

  @override
  _PageCameraState createState() => _PageCameraState();
}

class _PageCameraState extends State<PageCamera> {
  Uint8List _image;
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
                          FlatButton(
                            child: Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Icon(Icons.sync, color: Colors.white),
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
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    height: 123,
                    child: Container(
                      color: Colors.transparent,
                      alignment: Alignment.center,
                      child: Container(
                        width: 66,
                        height: 66,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(123)), color: Colors.red),
                        child: FlatButton(
                          child: null,
                          onPressed: () async {
                            final String tempPath = Path.join((await getTemporaryDirectory()).path, '${Uuid().v4().toString()}.png');
                            this._cameraController.takePicture(tempPath).then((_) async {
                              setState(() {
                                this._image = File(tempPath).readAsBytesSync();
                              });
                              await ImageGallerySaver.saveImage(this._image);
                              await File(tempPath).delete();
                              Future.delayed(Duration(seconds: 5)).then((_) {
                                setState(() {
                                this._image = null;
                              });
                              });
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 123,
                    right: 0,
                    width: 123,
                    height: 234,
                    child: Container(
                      color: Colors.transparent,
                      alignment: Alignment.center,
                      child: _image == null ? null : Image.memory(_image),
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
