import 'package:flutter/material.dart';
import 'tool/HttpController.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Search'),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          tooltip: '返回',
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _get,
        child: new Icon(Icons.add),
      ),
      body: new _searchWidget(),
    );
  }

  _get() async {
    var url = 'http://192.168.1.66:90/api/v1/login';

    HttpController.post(url, callback);
  }

  void callback(String str) {
    print(str);
  }
}

class _searchWidget extends StatefulWidget {
  @override
  State createState() {
    return new _searchState();
  }
}

class _searchState extends State<_searchWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new CircularProgressIndicator(),
      ),
    );
  }
}
