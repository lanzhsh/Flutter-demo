import 'package:flutter/material.dart';
import '../Global/JTGlobal.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('首页'),
            leading: Text(''),
            backgroundColor: Color(0xFFd81e06)),
        body: Column(children: <Widget>[
          Container(
            color: Color(0xFFd81e06),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  color: Color(0xFFd81e06),
                  child: Text('12312'),
                ),
                Container(
                  color: Color(0xFFd81e06),
                  child: Text('12312'),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(bottom: 100, left: 25, right: 25),
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  Expanded(
                      child: FlatButton(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          onPressed: () {
                            Router.openPage(RouterType.HomePageDetail, context, {'detail':'这是首页传到详情页的参数'});
                          },
                          color: JTColors.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          child: Text(
                            '去详情页',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ))),
                  SizedBox(width: 20, height: 10),
                ])
              ])
          )
        ]));
  }
}
