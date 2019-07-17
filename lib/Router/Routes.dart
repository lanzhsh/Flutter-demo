import 'package:flutter/widgets.dart';
import 'Router.dart';
import '../HomePage/HomePageDetail.dart';

class Routes {
  static configRoutes() {
    Router.register(RouterType.HomePageDetail, (BuildContext context, {Map params}) {
      return HomePageDetail(detail: params['detail']);
    });
  }
}
