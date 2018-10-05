import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Center(
            child: new Text('Shop'),
          ),
        ),
        body: new Text('ShopPage'),
      ),
    );
  }
}