/// recommend_page.dart
import 'package:flutter/material.dart';

class RecommendPage extends StatefulWidget {
  @override
  _RecommendPageState createState() {
    print('recommend createState');
    return _RecommendPageState();
  }
}

class _RecommendPageState extends State<RecommendPage>
    with AutomaticKeepAliveClientMixin {
  int count = 0;

  void add() {
    setState(() {
      count++;
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    print('recommend initState$count'+wantKeepAlive.toString());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body:Center(
            child: Text('首页推荐: $count', style: TextStyle(fontSize: 30))
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: add,
          child: Icon(Icons.add),
        ));
  }
}