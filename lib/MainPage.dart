import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'ShopPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MainPageWidget(),
    );
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '商铺', '消息', '我的'];

  @override
  Widget build(BuildContext context) {
    initData();

    return new Scaffold(
      body: _bodies[_tabIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: getTabIcon(0), title: getTabTitle(0)),
          new BottomNavigationBarItem(
              icon: getTabIcon(1), title: getTabTitle(1))
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }

  Image getTabImage(path) {
    return new Image.asset(path, width: 30.0, height: 30.0);
  }

  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(color: Colors.blue));
    }
    return new Text(appBarTitles[curIndex],
        style: new TextStyle(color: Colors.black12));
  }

  var _bodies;

  void initData() {
    tabImages = [
      [
        getTabImage('images/home_normal.png'),
        getTabImage('images/home_pressed.png')
      ],
      [
        getTabImage('images/home_normal.png'),
        getTabImage('images/home_pressed.png')
      ]
    ];
    _bodies = [new HomePage(), new ShopPage()];
  }
}
