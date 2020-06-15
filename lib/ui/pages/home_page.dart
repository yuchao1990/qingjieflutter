import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttercleanwarm/res/values/strings.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {

  String strDoCount = "--";
  String strCheckCount = "--";
  String strYearWatchCount = "--";
  RefreshIndicator  xx=RefreshIndicator(
      onRefresh: () async {
        setState(() {
          this.strDoCount = "99999";
          this.strCheckCount = "99999";
          this.strYearWatchCount = "99999";
        });
      },
      child: Container(height: MediaQuery
          .of(context)
          .size
          .height - MediaQuery
          .of(context)
          .padding
          .top - kToolbarHeight - kBottomNavigationBarHeight,
          color: Colors.white,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Stack(children: <Widget>[
                Container(height: 120,
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blue,
                    alignment: Alignment.topCenter,
                    child: new HomeFirstView(
                        this.strDoCount, this.strCheckCount,
                        this.strYearWatchCount)),
                Container(
                  margin: EdgeInsets.only(
                      top: 100.0, left: 15, right: 15),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration( //背景装饰
                      color: Colors.white,
                      boxShadow: [ //卡片阴影
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 4.0
                        )
                      ]
                  ),
                  alignment: Alignment.center,
                  //卡片内文字居中
                  child: new HomeFirstView("--", "--", "--"),
                )
              ]),
              Container(
                  margin: EdgeInsets.only(
                      top: 10.0,left: 10),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.library_books),
                      Text("数据统计"),
                    ],
                  )),
              Container(height: 120,
                  margin: EdgeInsets.only(
                      top: 15.0),
                  alignment: Alignment.topCenter,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(child:Text("数据统计") ,
                          flex: 1),
                      new Expanded(child: DonutPieChart.withSampleData(),
                          flex: 1)
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(" hello world "),
                  Text(" I am Jack "),
                ],
              ),
              Container(height: 120,
                  alignment: Alignment.topCenter,
                  child: DonutPieChart.withSampleData()),

              Container(height: 120,
                  alignment: Alignment.topCenter,
                  child: new DonutPieChart(DonutPieChart._createSampleData(),animate: true,)),
            ],
          )));
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
          backgroundColor: Colors.blue,
        ),
        body: RefreshIndicator(
            onRefresh: () async {
              setState(() {
                this.strDoCount = "99999";
                this.strCheckCount = "99999";
                this.strYearWatchCount = "99999";
              });
            },
            child: Container(height: MediaQuery
                .of(context)
                .size
                .height - MediaQuery
                .of(context)
                .padding
                .top - kToolbarHeight - kBottomNavigationBarHeight,
                color: Colors.white,
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Container(height: 120,
                          padding: EdgeInsets.all(10.0),
                          color: Colors.blue,
                          alignment: Alignment.topCenter,
                          child: new HomeFirstView(
                              this.strDoCount, this.strCheckCount,
                              this.strYearWatchCount)),
                      Container(
                        margin: EdgeInsets.only(
                            top: 100.0, left: 15, right: 15),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration( //背景装饰
                            color: Colors.white,
                            boxShadow: [ //卡片阴影
                              BoxShadow(
                                  color: Colors.black54,
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 4.0
                              )
                            ]
                        ),
                        alignment: Alignment.center,
                        //卡片内文字居中
                        child: new HomeFirstView("--", "--", "--"),
                      )
                    ]),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10.0,left: 10),
                        child: Row(
                      children: <Widget>[
                        Icon(Icons.library_books),
                        Text("数据统计"),
                      ],
                    )),
                    Container(height: 120,
                        margin: EdgeInsets.only(
                            top: 15.0),
                        alignment: Alignment.topCenter,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(child:Text("数据统计") ,
                                flex: 1),
                            new Expanded(child: DonutPieChart.withSampleData(),
                                flex: 1)
                          ],
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(" hello world "),
                        Text(" I am Jack "),
                      ],
                    ),
                    Container(height: 120,
                        alignment: Alignment.topCenter,
                        child: DonutPieChart.withSampleData()),

                    Container(height: 120,
                        alignment: Alignment.topCenter,
                        child: new DonutPieChart(DonutPieChart._createSampleData(),animate: true,)),
                  ],
                ))));
  }
}
class HomeLableView extends StatelessWidget {
  String lable;
  String value;

  HomeLableView({Key key, this.value, this.lable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Expanded(
      child: Container(
        height: 80,
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(this.value,maxLines: 1,),
              new Text(this.lable),
            ]),
      ),
      flex: 1, //flex == android:layout_weight
    );
  }
}

class HomeFirstView extends StatelessWidget {
  String strDoCount;
  String strCheckCount;
  String strYearWatchCount;

  HomeFirstView(this.strDoCount, this.strCheckCount, this.strYearWatchCount);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      new HomeLableView(value: this.strDoCount, lable: "已录入",),
      new HomeLableView(value: this.strCheckCount, lable: "已审核",),
      new HomeLableView(value: this.strYearWatchCount, lable: "已巡查",),
      new Expanded(
        child: Container(
            height: 80,
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: ClipOval(
                      child: new CachedNetworkImage(
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                        imageUrl: "http://139.219.188.148:13078/prod-api/profile/avatar/2020/03/29/2be7536f659170de6506a4879b1187cd.jpeg",
                        placeholder: (context, url) => new Icon(Icons.image),
                        errorWidget: (context, url, error) =>
                        new Icon(Icons.error),
                      ),
                    ),
                  ),
                  new Text('--'),
                ])),
        flex: 1, //flex == android:layout_weight
      )
    ]);
  }
}

class DonutPieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  DonutPieChart(this.seriesList, {this.animate});

  /// Creates a [PieChart] with sample data and no transition.
  factory DonutPieChart.withSampleData() {
    return new DonutPieChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,

    );
  }
  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(seriesList,
      animate: animate,
      // Configure the width of the pie slices to 60px. The remaining space in
      // the chart will be left as a hole in the center.
      defaultRenderer: new charts.ArcRendererConfig(arcWidth: 15),
      layoutConfig: new charts.LayoutConfig(),
      behaviors: [
        new charts.DatumLegend(
          // Positions for "start" and "end" will be left and right respectively
          // for widgets with a build context that has directionality ltr.
          // For rtl, "start" and "end" will be right and left respectively.
          // Since this example has directionality of ltr, the legend is
          // positioned on the right side of the chart.
          position: charts.BehaviorPosition.end,
          // By default, if the position of the chart is on the left or right of
          // the chart, [horizontalFirst] is set to false. This means that the
          // legend entries will grow as new rows first instead of a new column.
          horizontalFirst: false,
          // This defines the padding around each legend entry.
          cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
          // Set [showMeasures] to true to display measures in series legend.
          showMeasures: false,
          // Configure the measure value to be shown by default in the legend.
          legendDefaultMeasure: charts.LegendDefaultMeasure.firstValue,
          // Optionally provide a measure formatter to format the measure value.
          // If none is specified the value is formatted as a decimal.
          measureFormatter: (num value) {
            return value == null ? '-' : '${value}k';
          },
        ),
      ],
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, String>> _createSampleData() {
    final data = [
      new LinearSales("电取暖", 100),
      new LinearSales("分布式取暖", 75),
      new LinearSales("太阳能取暖", 25),
      new LinearSales("生物质取暖", 5),
    ];

    return [
      new charts.Series<LinearSales, String>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.legend,
        measureFn: (LinearSales sales, _) => sales.value,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final String legend;
  final double value;

  LinearSales(this.legend, this.value);
}

