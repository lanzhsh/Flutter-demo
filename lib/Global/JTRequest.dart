import 'package:flustars/flustars.dart';
import 'JTGlobal.dart';
import 'package:dio/dio.dart';
import 'dart:io';

typedef JTRequestSuccess(dynamic data);
typedef JTRequestFailure(Map<String, dynamic> error);

abstract class JTRequestBase {
  Map<String, dynamic> headerFileds();

  int requestTimeout();

  int responseTimeout();
}

class JTRequest implements JTRequestBase {
  static String host;

  get(String path, {Map params, JTRequestSuccess success,
       JTRequestFailure failure}) async {
    Dio dio = Dio();
    dio.options.baseUrl = host;
    dio.options.connectTimeout = requestTimeout();
    dio.options.receiveTimeout = responseTimeout();
    dio.options.headers = headerFileds();
    dio.options.contentType =
        ContentType.parse(dio.options.headers['Content-Type']);
    try {
      Response response = await dio.get(path, queryParameters: params ?? {});
      Map<String, dynamic> data = response.data ?? {};
      if (data['code'] == 0) {
        success?.call(data);
      } else {
        Map<String, dynamic> error = {
          'msg': data['msg'] ?? '请求出错',
          'code': data['code']
        };
        failure?.call(error);
      }
    } catch (e) {
      Map<String, dynamic> error = {'msg': '请求出错', 'code': -1000};
      failure?.call(error);
    }
  }

  post(String path, {Map params, JTRequestSuccess success,
      JTRequestFailure failure}) async {
    Dio dio = Dio();
    dio.options.baseUrl = host;
    dio.options.connectTimeout = requestTimeout();
    dio.options.receiveTimeout = responseTimeout();
    dio.options.headers = headerFileds();
    dio.options.contentType =
        ContentType.parse(dio.options.headers['Content-Type']);
    try {
      Response response = await dio.post(path, data: params ?? {});
      Map<String, dynamic> data = response.data ?? {};
      if (data['code'] == 0) {
        success?.call(data);
      } else {
        Map<String, dynamic> error = {
          'msg': data['msg'] ?? '请求出错',
          'code': data['code']
        };
        failure?.call(error);
      }
    } catch (e) {
      Map<String, dynamic> error = {'msg': '请求出错' + e.toString(), 'code': -1000};
      failure?.call(error);
    }
  }

  @override
  Map<String, dynamic> headerFileds() {
    // TODO: implement headerFiled
    final String token = SpUtil.getString(JTConstant.tokenStoreKey);
    if (token.isEmpty) {
      return {'Content-Type': 'application/json'};
    } else {
      return {'Content-Type': 'application/json', 'i-token': token};
    }
  }

  @override
  int requestTimeout() {
    // TODO: implement requestTimeout
    return 30000;
  }

  @override
  int responseTimeout() {
    // TODO: implement responseTimeout
    return 30000;
  }
}
