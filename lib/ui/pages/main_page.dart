import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttercleanwarm/res/values/strings.dart';
import 'package:fluttercleanwarm/ui/pages/chartest_page.dart';
import 'package:fluttercleanwarm/ui/pages/home_page.dart';
import 'package:fluttercleanwarm/ui/pages/info_page.dart';
import 'package:fluttercleanwarm/ui/pages/recommend_page.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with AutomaticKeepAliveClientMixin {

  final pages = [new HomePage(), new InfoPage(), new RecommendPage(), new myChart()];
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  final pageController = PageController();

  int currentIndex = 0;

  void onTap(int index) {
    pageController.jumpToPage(index);

//    setState(() {
//      currentIndex = index;
//    });
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          children: pages,
          physics: NeverScrollableScrollPhysics(), // 禁止滑动
        ),
    //body: Offstage(offstage: false,child: pages[currentIndex],),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text(Strings.main_guide_home)),
            BottomNavigationBarItem(icon: Icon(Icons.library_books),
                title: Text(Strings.main_guide_info)),
            BottomNavigationBarItem(
                icon: Icon(Icons.map), title: Text(Strings.main_guide_map)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text(Strings.main_guide_my)),
          ],
          currentIndex: currentIndex,
          fixedColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
        )
    );
  }

}
