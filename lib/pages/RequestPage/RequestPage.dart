import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RequestPage extends StatefulWidget {
  RequestPage({Key key}) : super(key: key);

  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  List _list = List();

  @override
  void initState() {
    super.initState();

    Dio().get("http://yinchengnuo.com/tuijian?page=1").then((onValue) {
      setState(() {
        this._list = onValue.data['info'];
      });
    }).catchError((onError) {
      print(onError);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('RequestPage 页面'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: this._list.length > 0
                ? GridView.builder(
                    itemCount: this._list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    NetworkImage(this._list[index]['userpic']),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Center(
                          child: Text(
                            this._list[index]['name'],
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                backgroundColor: Color.fromRGBO(0, 0, 0, 0.4)),
                          ),
                        ),
                      );
                    },
                  )
                : Text('加载中...'),
          ),
        ),
      ),
    );
  }
}
