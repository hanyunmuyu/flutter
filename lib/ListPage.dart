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
  ScrollController _scrollController = ScrollController();
  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMore();
      }
    });
  }

  Future _getData() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        list = List.generate(15, (i) => "$i");
        this._loading = false;
        print(this._loading);
      });
    });
  }

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      setState(() {
        list = List.generate(20, (i) => "$i");
      });
    });
  }

  Widget _renderRow(BuildContext context, int index) {
    return ListTile(title: new Text(list[index]));
  }

  Future _getMore() async {
    if (!this._loading) {
      setState(() {
        this._loading = true;
      });
      await Future.delayed(Duration(seconds: 2), () {
        setState(() {
          list.addAll(List.generate(16, (i) => "$i"));
          this._loading = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Stack(
        children: <Widget>[
          new Center(
            child: new LoadingWidget(
              active: _loading,
            ),
          ),
          RefreshIndicator(
            child: ListView.builder(
              itemBuilder: _renderRow,
              itemCount: list.length,
              controller: _scrollController,
            ),
            onRefresh: _onRefresh,
          )
        ],
      ),
      floatingActionButton: new FloatingActionButton(onPressed: (){
        _scrollController.animateTo(0, duration: new Duration(milliseconds: 200), curve: Curves.ease);
      },child: new Icon(Icons.arrow_upward),),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }
}
