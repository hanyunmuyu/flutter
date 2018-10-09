import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new _ListView());
  }
}

class _ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        padding: const EdgeInsets.all(6.0),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return new Divider();
          }
          return new _RowItemWidget(i.toString());
        });
  }
}

class _RowItemWidget extends StatefulWidget {
  String title;

  _RowItemWidget(this.title);

  @override
  State createState() {
    return new _RowItemState(title: title);
  }
}

class _RowItemState extends State<_RowItemWidget> {
  String title;
  final saved = new Set();

  _RowItemState({this.title});

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        setState(() {
          if (saved.contains(this.title)) {
            saved.remove(this.title);
          } else {
            saved.add(this.title);
          }
        });
        print(saved.join(','));
      },
      title: new Text(title == null ? '' : title),
      trailing: new Icon(
        saved.contains(this.title) ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
    );
  }
}
