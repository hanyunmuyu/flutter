# app

A new Flutter application.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

-   [dart学习](http://www.cndartlang.com/dart/page/4)
-   [参考的文章1](https://blog.csdn.net/u013000152/article/details/80940664)
-   [TabBar](https://blog.csdn.net/poorkick/article/details/80964641)
-   [tabbar的状态保持](https://www.jianshu.com/p/fbd1d0e22f9c)
-   [质感设计之弹出菜单](https://blog.csdn.net/hekaiyou/article/details/53897967?utm_source=gold_browser_extension)
-   [底部导航栏,采用PageView实现，不知道能解决页面切换后状态被重置的问题，待会再说](https://blog.csdn.net/u011045726/article/details/79583423)
-   [参考知乎大神的文章tab切换](https://zhuanlan.zhihu.com/p/37697590)
-   [Flutter(二)：实现网络请求、json解析、ListView展示数据](https://blog.csdn.net/qq_16247851/article/details/81210771)
-   [flutter_redux](https://pub.flutter-io.cn/packages/flutter_redux#-readme-tab-)
-   [flutter_redux](https://pub.flutter-io.cn/packages/flutter_redux#-readme-tab-)
-   [图片浏览](https://pub.flutter-io.cn/packages/image_picker#-readme-tab-)
-   [Flutter listview下拉刷新 上拉加载更多 功能实现](https://blog.csdn.net/u011272795/article/details/82719640)
-   [listview滚动到指定位置](https://www.jianshu.com/p/443f1aef488f)
-   [Flutter进阶—创建有状态控件](https://blog.csdn.net/hekaiyou/article/details/71726226)

-   [Flutter进阶—质感设计之表单输入](https://blog.csdn.net/hekaiyou/article/details/61197710)
-   [flutter 输入框组件TextField](https://blog.csdn.net/u011272795/article/details/82528432?utm_source=blogxgwz0)


踩过的坑：
```
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        children: <Widget>[
          new ActivePage(),
          new ContactPage(),
          new ResumePage(),
          new AccountPage(),
        ],
        controller: _pageController,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.star),
              title: new Text(
                '动态',
              )),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.contacts),
              title: new Text(
                '通讯录',
              )),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.contacts),
              title: new Text(
                '通讯录',
              )),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle),
              title: new Text(
                '我的',
              )),
        ],
        currentIndex: _page,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,//添加这个属性，多于三个的导航选项才会显示，否则多于三个都会被隐藏掉
      ),
    );
  }
```
