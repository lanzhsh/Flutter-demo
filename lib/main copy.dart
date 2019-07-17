import 'package:flutter/material.dart';
import 'package:flustars/flustars.dart';
import 'HomeTabBar/HomeTabBar.dart';
import 'Router/Routes.dart';
import 'Global/JTGlobal.dart';
// import 'Global/JTRequest.dart';

void main() {
    // 初始化路由表
    Routes.configRoutes();


    // 设置请求
    // JTRequest.host = 'https://pre.com';

    //初始化入口
    runApp(LanApp());
}

class LanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // print('-------TOKEN--------$token');
    return HomeTabBar();
  }
}
