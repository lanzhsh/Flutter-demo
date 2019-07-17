import 'package:flutter/material.dart';

class HomePageDetail extends StatefulWidget {
  HomePageDetail({
    Key key,
    @required this.detail,
  }) : super(key: key);

  final String detail;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageDetailState();
  }
}

class _HomePageDetailState extends State<HomePageDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('详情页'),
        leading: Text(''),
        backgroundColor: Color(0xFFd81e06)
      ),
      body: Container(
        // color: Color(0xFFd81e06),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              color: Color(0xFFd81e06),
              child: Text('${widget.detail}'),
            ),
            Container(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  Expanded(
                      child: FlatButton(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: Color(0xFFd81e06),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          child: Text(
                            '返回上一级',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ))),
                  SizedBox(width: 20, height: 10),
                ])
              ])
          ),
          ],
      ),
      ),
    );
  }
}
