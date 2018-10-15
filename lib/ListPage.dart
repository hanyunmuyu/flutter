import 'package:flutter/material.dart';
import 'widget/LoadingWidget.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new _ListWidget();
  }
}

class _ListWidget extends StatefulWidget {
  @override
  State createState() {
    return new _ListState();
  }
}

class _ListState extends State<_ListWidget> {
  List list = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  Future _getData() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        list = List.generate(15, (i) => "$i");
      });
    });
  }

  Future<Null> _onFresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      setState(() {
        list = List.generate(20, (i) => "$i");
      });
    });
  }

  Widget _renderRow(BuildContext context, int index) {
    return ListTile(title: new Text(list[index]));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Stack(
        children: <Widget>[
          new Center(
            child: new LoadingWidget(true),
          ),
          RefreshIndicator(
              child: ListView.builder(
                itemBuilder: _renderRow,
                itemCount: list.length,
              ),
              onRefresh: _onFresh)
        ],
      ),
    );
  }
}
