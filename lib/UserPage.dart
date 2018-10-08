import 'package:flutter/material.dart';
import 'LoginPage.dart';

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
          child: new RaisedButton.icon(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new LoginPage();
                }));
              }, icon: new Icon(Icons.home
          ), label: new Text('登录')),
        ),
      ),
    )
  }
}
