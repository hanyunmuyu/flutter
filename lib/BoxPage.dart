import 'package:flutter/material.dart';

class BoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
          child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Expanded(
              child: new Text(
            'aaa',
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              fontSize: 40.0,
              color: Colors.black87,
            ),
          )),
          new Expanded(
              flex: 2,
              child: new Image.asset(
                'images/mm.jpg',
                fit: BoxFit.cover,
              )),
          new Expanded(
              child: new Image.asset(
            'images/mm.jpg',
            fit: BoxFit.cover,
          )),
        ],
      )),
    );
  }
}
