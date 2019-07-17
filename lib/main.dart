import 'package:flutter/material.dart';
import 'package:flustars/flustars.dart';
import 'HomeTabBar/HomeTabBar.dart';
import 'Global/JTGlobal.dart';
import 'Router/Routes.dart';
import 'Global/JTRequest.dart';
import 'Redux/JTReduxManager.dart';

void main() {
  // 初始化单例工具， 时间30ms左右
  SpUtil.getInstance().then((spUtil){
    // 初始化路由表
    Routes.configRoutes();

    // 初始化Store
    final Store<JTAppState> _store = Store<JTAppState>(appReducer,
        initialState: JTAppState(CardInfoModel.fromJson(
            SpUtil.getObject(JTConstant.userInfoStoreKey) ?? {})));

    // 设置请求
    JTRequest.host = 'https://pre.aijiatui.com';

    runApp(StoreProvider<JTAppState>(
        store: _store,
        child: MaterialApp(
            theme: ThemeData(primaryColor: JTColors.primary),
            home: JiaTuiApp())));
  });
}

class JiaTuiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final token = SpUtil.getString(JTConstant.tokenStoreKey);
    print('-------TOKEN--------$token');
    return HomeTabBar();
  }
}
