import 'tool/Store.dart';
import 'package:flutter/material.dart';
import 'tool/Store.dart';
import 'ShopPage.dart';
class AsyncPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new _AsyncPage();
  }
}
class _AsyncPage extends StatefulWidget{

  @override
  State createState() {
    return new _AsyncPageState();
  }
}
class _AsyncPageState extends State<_AsyncPage>{
  static Store store=new Store();
  String _token='';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child:_token==null? new IconButton(icon: new Icon(Icons.add), onPressed:_write):new Text('Text'),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _get();
    });
  }

  void _write() async{
    store.add('token', 'qqqqqqqqqq');
  }
  void _get() async{
    try {
      _token=await store.get('token');
      if(_token!=null) {
        Navigator.pushReplacement(context, new MaterialPageRoute(builder: (_){
          return new ShopPage();
        }));
      }
    }catch(e){
    }
  }


}