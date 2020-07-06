import 'package:flutter/material.dart';
import 'package:demo_widgets/pages/home/widgets/home-recommend-list.dart';

class XiaoHongShu extends StatefulWidget {
  @override
  _XiaoHongShuState createState() => _XiaoHongShuState();
}

class _XiaoHongShuState extends State<XiaoHongShu>
    with SingleTickerProviderStateMixin {
  List<Tab> _tabs = [
    Tab(
      text: "关注",
    ),
    Tab(
      text: "发现",
    ),
    Tab(
      text: "扬州",
    )
  ];

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = new TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.access_alarm,
          color: Colors.black,
        ),
        title: SizedBox(
            width: 200,
            child: TabBar(
              labelColor: Colors.black,
              tabs: _tabs,
              controller: _tabController,
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.all(0),
            )),
        actions: [Container()],
        bottom: PreferredSize(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Color(0xfff4f4f4),
                  height: 30,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search, size: 18, color: Color(0xff999999)),
                        SizedBox(width: 4),
                        Text("搜索笔记、商品和用户",
                            style: TextStyle(
                                color: Color(0xff999999), fontSize: 14))
                      ]),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(40)),
      ),
      body: TabBarView(controller: _tabController, children: [
        HomeRecommendList(),
        Center(
          child: Text("2"),
        ),
        Center(
          child: Text("3"),
        )
      ]),
    );
  }
}




