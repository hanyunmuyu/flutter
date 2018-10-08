import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
//    var httpClient = new HttpClient();
//    var uri =
//        Uri.http('192.168.1.66:90', '/api/v1/login', {'mobile': '15701308875'});
////    var request = await httpClient.post('192.168.1.66', 90, '/api/v1/login');
//    var request = await httpClient.postUrl(uri);
//    var response = await request.close();
//    var responseBody = await response.join();
//    print(responseBody);

    var url='http://192.168.1.66:90/api/v1/login';
    var params={
      'mobile':'15701308875'
    };


    http.Response res = await http.post(url, body: params);
    print(res.body);
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
        child: new Text('11111'),
      ),
    );
  }
}
