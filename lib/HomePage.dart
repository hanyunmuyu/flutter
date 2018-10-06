import 'package:flutter/material.dart';
import 'SearchPage.dart';
import 'view/FirstPage.dart';
import 'view/SecondPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new HomePageWidget();
  }
}

class HomePageWidget extends StatefulWidget {
  @override
  State createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePageWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'First'),
    new Tab(text: 'Second'),
  ];

  @override
  Widget build(BuildContext context) {
    var items = [
      new PopupMenuItem(
        child: new FlatButton.icon(
            onPressed: () {}, icon: new Icon(Icons.add), label: new Text('1')),
        value: 1,
      ),
      new PopupMenuItem(
        child: new Text('2'),
        value: 2,
      ),
      new PopupMenuItem(
        child: new Text('3'),
        value: 3,
      )
    ];
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new SearchPage();
                }));
              }),
          new PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return items.toList();
            },
            icon: new Icon(Icons.add),
          ),
        ],
        bottom: new TabBar(
          controller: _tabController,
          tabs: myTabs,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.white,
          labelStyle: new TextStyle(fontSize: 16.0),
          unselectedLabelStyle: new TextStyle(fontSize: 12.0),
        ),
      ),
      body: new TabBarView(
        children: [new FirstPage(), new SecondPage()],
        controller: _tabController,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
