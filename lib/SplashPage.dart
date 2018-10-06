import 'package:flutter/material.dart';
import 'MainPage.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
//    return new Image.asset('images/mm.jpg');
    var img =
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1538810906767&di=f84d0a82f6f414a599ca85b7aa713c09&imgtype=0&src=http%3A%2F%2Fpic.dbw.cn%2F0%2F08%2F82%2F26%2F8822640_107362.jpg';

    return new GestureDetector(
      onTap: goToMainPage,
      child: new Image.network(img, fit: BoxFit.cover),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countDown();
  }

  void countDown() {
    var _duration = new Duration(seconds: 3);
    new Future.delayed(_duration, goToMainPage);
  }

  void goToMainPage() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
      return new MainPage();
    }));
  }
}
