import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttercleanwarm/res/values/strings.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TestPage extends StatefulWidget {

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage>
    with AutomaticKeepAliveClientMixin {
  String xxxx = "xxxxxx";

  _toast() {
    Fluttertoast.showToast(
        msg: "登录成功",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        // 消息框弹出的位置
        timeInSecForIos: 1,
        // 消息框持续的时间（目前的版本只有ios有效）
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(Strings.app_title, style: TextStyle(fontSize: 15)),
        ),
        body: RefreshIndicator(
            onRefresh: () async {
              setState(() {
                this.xxxx = "1212";
              });
            },
            child: Container(height: MediaQuery
                .of(context)
                .size
                .height - MediaQuery
                .of(context)
                .padding
                .top - kToolbarHeight - kBottomNavigationBarHeight,
                child: new CustomScrollViewTestRoute())));
  }
}

class CustomScrollViewTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //因为本路由没有使用Scaffold，为了让子级Widget(如Text)使用
    //Material Design 默认的样式风格,我们使用Material作为本路由的根。
    return Material(
      child: Container(height: MediaQuery
          .of(context)
          .size
          .height - MediaQuery
          .of(context)
          .padding
          .top - kToolbarHeight - kBottomNavigationBarHeight,
          color: Colors.green,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(height: MediaQuery
                  .of(context)
                  .size
                  .height - MediaQuery
                  .of(context)
                  .padding
                  .top - kToolbarHeight - kBottomNavigationBarHeight,
                  color: Colors.green,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      Container(height: MediaQuery
                          .of(context)
                          .size
                          .height - MediaQuery
                          .of(context)
                          .padding
                          .top - kToolbarHeight - kBottomNavigationBarHeight,
                          color: Colors.green,
                          child: Text('I\'m dedicating every day to you')),
                      const Text('Domestic life was never quite my style'),
                      const Text(
                          'When you smile, you knock me out, I fall apart'),
                      const Text('And I thought I was so smart'),
                    ],
                  )),
              const Text('Domestic life was never quite my style'),
              const Text(
                  'When you smile, you knock me out, I fall apart'),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  Container(height: MediaQuery
                      .of(context)
                      .size
                      .height - MediaQuery
                      .of(context)
                      .padding
                      .top - kToolbarHeight - kBottomNavigationBarHeight,
                      color: Colors.green,
                      child: Text('I\'m dedicating every day to you')),
                  const Text('Domestic life was never quite my style'),
                  const Text(
                      'When you smile, you knock me out, I fall apart'),
                  const Text('And I thought I was so smart'),
                ],
              ),
            ],
          )),
    );
  }
}


