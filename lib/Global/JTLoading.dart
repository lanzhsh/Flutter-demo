import 'package:flutter/material.dart';

class JTLoading extends StatefulWidget {
  final String loadingText;

  JTLoading({
    Key key,
    this.loadingText,
  }) : super(key: key);

  static showLoading(BuildContext context, {String msg}) {
    // 下面的参数全部为必填
    showGeneralDialog(
      context: context,
      barrierLabel: '',
      pageBuilder: (context, animation, second) =>
          JTLoading(loadingText: msg ?? ''),
      barrierDismissible: false,
      // 菊花显示出来的时间
      transitionDuration: Duration(milliseconds: 1),
      // 这个颜色不能设为透明和alpha为0
      barrierColor: Colors.black.withOpacity(0.01),
    );
  }

  static hideLoading(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  State<JTLoading> createState() => _JTLoadingState();
}

class _JTLoadingState extends State<JTLoading> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: Material(
        type: MaterialType.transparency,
        child: new Center(
          child: new SizedBox(
            width: 120.0,
            height: 120.0,
            child: new Container(
              decoration: ShapeDecoration(
                color: Color(0xB3000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new CircularProgressIndicator(backgroundColor: Colors.white),
                  widget.loadingText.isEmpty
                      ? Text('')
                      : new Padding(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                          ),
                          child: new Text(
                            widget.loadingText,
                            style: new TextStyle(
                                fontSize: 14.0, color: Colors.white),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
