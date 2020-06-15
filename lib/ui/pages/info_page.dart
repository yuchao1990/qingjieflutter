import 'package:flutter/material.dart';
import 'package:fluttercleanwarm/res/values/strings.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }
  _toast(){
    Fluttertoast.showToast(
        msg: "登录成功",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,  // 消息框弹出的位置
        timeInSecForIos: 1,  // 消息框持续的时间（目前的版本只有ios有效）
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.info_title),
        centerTitle: true,
        leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.add),
                onPressed: _toast,
              );
            },
          ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.filter_list), onPressed: () {}),
          FlatButton(
            child: Text("normal"),
            textColor: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}
