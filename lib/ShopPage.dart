import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: ObjectKey("ShopPage"),
      appBar: new AppBar(
        title: new Center(
          child: new Text('Shop'),
        ),
      ),
      body: new Text('ShopPage'),
    );
  }
}
