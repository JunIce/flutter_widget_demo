import 'package:demo_widgets/pages/home/widgets/home-recommend-item.dart';
import 'package:flutter/material.dart';

class HomeRecommendList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(children: []),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "关注的人近期未发布笔记",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    Text("去发现更多有趣的人吧",
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                  ]),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(children: [
                Text("为你推荐",
                    style: TextStyle(fontSize: 14, color: Colors.black))
              ]),
            ),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemBuilder: (BuildContext context, int index) {
                return HomeRecommedItem();
              },
              itemCount: 20,
            )
          ],
        );
  }
}