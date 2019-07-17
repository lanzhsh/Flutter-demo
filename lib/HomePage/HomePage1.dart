import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('首页'),
        leading: Text(''),
        backgroundColor: Color(0xFFd81e06)
      ),
      body: Container(
        // color: Color(0xFFd81e06),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              color: Color(0xFFd81e06),
              child: Text('这是'),
            ),
            Container(
              color: Color(0xFFd81e06),
              child: Text('首页'),
            )
          ],
        ),
      ),
    );
  }
}
