import 'package:flutter/material.dart';
import '../HomePage/HomePage.dart';
import '../ShopCart/ShopCart.dart';
import '../Mine/Mine.dart';
import '../Global/JTGlobal.dart';

class HomeTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeTabBarState();
  }
}

class _HomeTabBarState extends State<HomeTabBar>
    with SingleTickerProviderStateMixin {
  static const _tabDatas = [
    {
      'title': '首页',
      'image': 'images/home.png',
      'selectedImage': 'images/home-select.png'
    },
    {
      'title': '购物车',
      'image': 'images/shop.png',
      'selectedImage': 'images/shop-select.png'
    },
    {
      'title': '我的',
      'image': 'images/my.png',
      'selectedImage': 'images/my-select.png'
    }
  ];
  var _currentTabIndex = 0;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(initialIndex: 0, length: 3, vsync: this)
      ..addListener(() {
        this.setState(() {
          _currentTabIndex = _tabController.index;
        });
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
            tabs: tabs(),
            indicatorColor: Colors.transparent,
            controller: _tabController,
            onTap: (value) {
              this.setState(() {
                _currentTabIndex = value;
              });
            }),
      ),
      body: TabBarView(controller: _tabController, children: [
        HomePage(),
        ShopCart(),
        Mine()
      ]),
    );
  }

  List<Widget> tabs() {
    const normalTextStyle = TextStyle(color: JTColors.text2, fontSize: 13);
    const selectedTextStyle = TextStyle(color: JTColors.primary, fontSize: 13);

    return _tabDatas.map((e) {
      var tabIndex = _tabDatas.indexOf(e);
      var isSelected = tabIndex == _currentTabIndex;

      var imageAsset = Container(
          child: Image.asset(
            e[isSelected ? 'selectedImage' : 'image'],
            width: 24,
            height: 24,
          ),
          padding: EdgeInsets.only(top: 15));

      var text = Container(
        child: Text(e['title'],
            style: isSelected ? selectedTextStyle : normalTextStyle),
        padding: EdgeInsets.only(top: 2, bottom: 2),
      );
      return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[imageAsset, text]);
    }).toList();
  }
}
