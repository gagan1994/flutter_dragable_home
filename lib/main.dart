import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_explore/LocalDb.dart';
import 'package:flutter_explore/draggable_layout.dart';
import 'package:flutter_explore/top_layout.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:provider/provider.dart';

import 'bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StyledToast(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          accentColor: Colors.blue,
          primaryColor: Colors.lightBlue,
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MyStateFullWidget();
  }
}

class MyStateFullWidget extends StatefulWidget {
  @override
  _MyStateFullWidgetState createState() => _MyStateFullWidgetState();
}

class _MyStateFullWidgetState extends State<MyStateFullWidget>
    with TickerProviderStateMixin {
  final double _boxSize = 500.0;
  TabController _tabController, _tabControllerBottom;
  List<Tab> tabList = List();

  bool isToastVissible = true;
  @override
  void initState() {
    tabList.add(new Tab(
      text: 'Dates',
    ));
    tabList.add(new Tab(
      text: 'Mates',
    ));
    _tabController = new TabController(vsync: this, length: tabList.length);
    _tabControllerBottom = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _tabControllerBottom.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainAppDb(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Explore"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TopLayout(),
            Container(
              decoration: new BoxDecoration(color: Colors.white),
              child: new TabBar(
                controller: _tabController,
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: tabList,
              ),
            ),
            DraggableLayout(),
          ],
        ),
        bottomNavigationBar: BottomItems(_tabControllerBottom),
      ),
    );
  }
}
