import 'package:flutter/material.dart';
export '../Router/Router.dart';
export './JTLoading.dart';
export '../Models/CardInfoModel.dart';

class JTConstant {
  static const tokenStoreKey = 'JTUsersToken';
  static const bossStateStoreKey = 'JTUsersBossState';
  static const userInfoStoreKey = 'JTUsersInfo';
}

class JTColors {
  // 主题色，蓝色
  static const primary = Color(0xFFd81e06);
  static const primaryGray = Color(0xFFF2F6F7);

  // 线条颜色
  static const line = Color(0xFFEEEEEE);

  // 文本颜色
  static const text1 = Color(0xFF000000);
  static const text2 = Color(0xFF444444);
  static const text3 = Color(0xFF666666);
  static const text4 = Color(0xFF999999);
}
