import 'package:demo_widgets/components/home-item-card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeFindList extends StatefulWidget {
  @override
  _HomeFindListState createState() => _HomeFindListState();
}

class _HomeFindListState extends State<HomeFindList>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<String> _tabString = ["直播", "美食", "科技数码", "运动健身", "Vlog", "旅行", "音乐"];

  List<Widget> _tabs = [];

  @override
  void initState() {
    _generateTab();
    _tabController = new TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  void _generateTab() {
    for (int i = 0; i < _tabString.length; i++) {
      _tabs.add(Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(4)),
        child: Text(_tabString[i]),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [_buildScrollTab(), _buildTabView()]);
  }

  Widget _buildScrollTab() {
    return Container(
      height: 50,
      color: Colors.white,
      padding: EdgeInsets.only(left: 10),
      child: TabBar(
        tabs: _tabs,
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(10),
        labelPadding: EdgeInsets.only(right: 10),
        indicatorColor: Colors.transparent,
        labelColor: Colors.black,
        controller: _tabController,
      ),
    );
  }

  Widget _buildTabView() {
    List<Widget> _list = [];

    for (int i = 0; i < _tabs.length; i++) {
      _list.add(StaggeredGridView.countBuilder(
        padding: EdgeInsets.symmetric(horizontal: 6),
        crossAxisCount: 4,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return HomeListItemCard(
            title: "原本只想在孙女面前树立好榜样，没想到...你最近写的一篇作文是什么题目",
            cover:
                "https://ci.xiaohongshu.com/850e398f-95bb-3384-83de-4e682d7895b6?imageView2/2/w/540/format/jpg",
            useravatar:
                "https://img.xiaohongshu.com/avatar/5c92ec80e1cd0d0001b0ab09.jpg@80w_80h_90q_1e_1c_1x.jpg",
            username: "叶公子",
            onTap: () {
              Navigator.of(context).pushNamed("detail");
            },
          );
        },
        staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 6.0,
      ));
    }

    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: _list,
      ),
    );
  }
}

