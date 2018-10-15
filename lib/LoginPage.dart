import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _LoginWidget();
  }
}

class _LoginWidget extends StatefulWidget {
  @override
  State createState() {
    return new _LoginState();
  }
}

class _LoginState extends State<_LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Text('11111111'),
    );

  }
}
