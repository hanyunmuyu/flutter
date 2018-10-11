import 'package:flutter/material.dart';

class StatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new StatePageState(),
          new StatePageState(),
        ],
      ),
    );
  }
}

class StatePageState extends StatefulWidget {
  @override
  State createState() {
    return _TapboxAState();
  }
}

class _TapboxAState extends State<StatePageState> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            _active ? 'active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration:
            new BoxDecoration(color: _active ? Colors.lightGreen : Colors.grey),
      ),
    );
  }
}
