import 'package:flutter/material.dart';
import 'SearchPage.dart';

class HomePage extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    new Tab(text: '语文'),
    new Tab(text: '数学'),
    new Tab(text: '英语'),
    new Tab(text: '化学'),
    new Tab(text: '物理'),
    new Tab(text: '政治'),
    new Tab(text: '经济'),
    new Tab(text: '体育'),
  ];

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: myTabs.length,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text('Home'),
            actions: <Widget>[
              new IconButton(
                  icon: new Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(new MaterialPageRoute(builder: (_) {
                      return new SearchPage();
                    }));
                  }),
              new IconButton(
                  icon: new Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: null)
            ],
            bottom: new TabBar(
              tabs: myTabs,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              labelStyle: new TextStyle(fontSize: 16.0),
              unselectedLabelStyle: new TextStyle(fontSize: 12.0),
            ),
          ),
          body: new TabBarView(
              children: myTabs.map((Tab tab) {
            return new Center(child: new Text(tab.text));
          }).toList()),
        ));
  }
}
