import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  bool _loading = true;

  LoadingWidget(this._loading);

  @override
  Widget build(BuildContext context) {
    return new _LoadingWidget(this._loading);
  }
}

class _LoadingWidget extends StatefulWidget {
  bool _loading = true;

  _LoadingWidget(this._loading);

  @override
  State createState() {
    return new _LoadingState(this._loading);
  }
}

class _LoadingState extends State<_LoadingWidget> {
  bool _loading = true;

  _LoadingState(this._loading);

  @override
  Widget build(BuildContext context) {
    print(this._loading);

    return new Stack(
      children: <Widget>[
        new Center(
          child: this._loading ? new CircularProgressIndicator() : null,
        )
      ],
    );
  }
}
