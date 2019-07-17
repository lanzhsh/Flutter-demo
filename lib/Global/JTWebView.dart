import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class JTWebView extends StatefulWidget {
  final String url;

  JTWebView({Key key, @required this.url})
      : assert(url != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _JTWebViewState();
  }
}

class _JTWebViewState extends State<JTWebView> {
  FlutterWebviewPlugin _webViewPlugin;
//  String _title = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _webViewPlugin = FlutterWebviewPlugin();
    _webViewPlugin.onStateChanged.listen((data) {
      print(data);
    });

    _webViewPlugin.onHttpError.listen((data) {
      print('--------$data');
    });

    _webViewPlugin.onDestroy.listen((data){
      print('111111111111111$data');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WebviewScaffold(
      url: widget.url,
      appBar: AppBar(
        title: Text('WebView'),
      ),
    );
  }
}
