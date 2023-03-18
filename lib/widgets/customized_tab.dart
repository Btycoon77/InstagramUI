import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/grid_view.dart';

class CustomizedTabBar extends StatefulWidget {
  @override
  _CustomizedTabBarState createState() => _CustomizedTabBarState();
}

class _CustomizedTabBarState extends State<CustomizedTabBar>
    with AutomaticKeepAliveClientMixin<CustomizedTabBar> {
  TabController _tabController;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            physics: ClampingScrollPhysics(),
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5.0,
            indicatorPadding: const EdgeInsets.all(1.0),
            // labelPadding: const EdgeInsets.all(8.0),
            tabs: [
              IconButton(
                  icon: Icon(
                    Icons.grid_on,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: null),
            ],
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            physics: ClampingScrollPhysics(),
            children: [
              GridProfile(),
              GridProfile(),
            ]),
      ),
    );
  }
}
