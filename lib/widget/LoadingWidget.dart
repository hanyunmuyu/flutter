import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  @override
  State createState() {
    return new _LoadingState();
  }

  final bool active;

  LoadingWidget({Key key, this.active: true});
}

//class _LoadingWidget extends StatefulWidget {
//  @override
//  State createState() {
//    return new _LoadingState();
//  }
//}

class _LoadingState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: widget.active
          ? new CircularProgressIndicator(
              strokeWidth: 2.0,
            )
          : null,
    );
  }
}
