import 'package:flutter/material.dart';
import 'ImagePage.dart';
import 'ListViewPage.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new _UserWidget(),
    );
  }
}

class _UserWidget extends StatefulWidget {
  @override
  State createState() {
    return new _UserState();
  }
}

class _UserState extends State<_UserWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new RaisedButton.icon(
                  onPressed: () {
                    Navigator.of(context)
                        .push(new MaterialPageRoute(builder: (_) {
                      return new ImagePage();
                    }));
                  },
                  icon: new Icon(Icons.camera),
                  label: new Text('图片浏览')),
              new RaisedButton.icon(
                  onPressed: () {
                    Navigator.of(context)
                        .push(new MaterialPageRoute(builder: (_) {
                      return new ListViewPage();
                    }));
                  },
                  icon: new Icon(Icons.list),
                  label: new Text('列表'))
            ],
          ),
        ),
      ),
    );
  }
}
