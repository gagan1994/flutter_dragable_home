import 'package:flutter/material.dart';

class BottomItems extends StatelessWidget {
  TabController tabControllerBottom;
  BottomItems(this.tabControllerBottom);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        elevation: 10,
        child: BottomAppBar(
          notchMargin: 8,
          shape: CircularNotchedRectangle(),
          child: TabBar(
            controller: tabControllerBottom,
            tabs: [
              Tab(
                icon: Icon(Icons.search),
                text: 'Search',
              ),
              Tab(
                icon: Icon(Icons.message),
                text: 'Message',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Fav',
              ),
            ],
            labelStyle: TextStyle(fontSize: 10),
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Theme.of(context).accentColor,
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Theme.of(context).primaryColor,
            indicator: UnderlineTabIndicator(
              insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 72.50),
              borderSide:
                  BorderSide(color: Theme.of(context).primaryColor, width: 3),
            ),
          ),
        ),
      ),
    );
  }
}
