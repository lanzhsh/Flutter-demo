import 'package:flutter/material.dart';

typedef Widget WidgetBuilder(BuildContext context, {Map params});

enum RouterType {
  NonePage,
  HomePageDetail
}

class _Router {
  _Router({this.type, this.widgetBuilder});

  final RouterType type;

  WidgetBuilder widgetBuilder;

  List<_Router> _children = [];

  List<_Router> get children => List.unmodifiable(_children);

  addChild(_Router child) {
    _children.add(child);
  }
}

class Router {
  static final _routerEntry = _Router(type: RouterType.NonePage);

  // param should wrap with {}, eg: /movie/{id}
  static register(RouterType type, WidgetBuilder widgetBuilder) {
    if (type != RouterType.NonePage) {
      final _router = _Router(type: type);
      _router.widgetBuilder = widgetBuilder;
      _routerEntry.addChild(_router);
    }
  }

  static widget(RouterType type, BuildContext context, {Map params}) {
    Widget _widget;

    for (_Router _router in _routerEntry.children) {
      if (_router.type == type && _router.widgetBuilder != null) {
        _widget = _router.widgetBuilder(context, params: params);
        break;
      }
    }

    return _widget;
  }

  static openPage(RouterType type, BuildContext context, [Map params]) {
    Widget _widget;

    for (_Router _router in _routerEntry.children) {
      if (_router.type == type && _router.widgetBuilder != null) {
        _widget = _router.widgetBuilder(context, params: params);
        break;
      }
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) => _widget));
  }
}
