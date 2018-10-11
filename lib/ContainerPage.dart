import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column buildButton(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            icon,
            color: color,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                  fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
              overflow: TextOverflow.ellipsis,
            ),
          ),
//        new Icon(icon,color: col,)
        ],
      );
    }

    return new Scaffold(
        body: new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'aaaaaaaaaaa',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Text(
                'aaaaaaaaaa',
                style: new TextStyle(color: Colors.grey),
              ),
              new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildButton(Icons.camera, 'Call'),
                  buildButton(Icons.near_me, 'near_me'),
                  buildButton(Icons.share, 'Share')
                ],
              ),
            ],
          )),
          new Icon(
            Icons.star,
            color: Colors.red,
          ),
          new Text('41', style: new TextStyle(color: Colors.grey)),
        ],
      ),
    ));
  }
}
