import 'package:demo_widgets/components/user-follow-btn.dart';
import 'package:flutter/material.dart';

class HomeRecommedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [_buildHeader(), SizedBox(height: 20), _buildImages(context), Divider()],
        ));
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://p.ssl.qhimg.com/sdm/420_627_/t01fed402c96cea7d19.jpg"),
                    fit: BoxFit.cover),
              ),
            )),
        SizedBox(width: 6),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("无数人", style: TextStyle(color: Colors.black, fontSize: 16)),
            Text("笔记 * 100 |推荐自 食谱",
                style: TextStyle(color: Colors.grey, fontSize: 12))
          ],
        )),
        UserFollowBtn()
      ],
    );
  }

  Widget _buildImages(context) {
    Size size = MediaQuery.of(context).size;
    double imageWidth = (size.width -  20)/3;
    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 10, childAspectRatio: 0.7),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              width: imageWidth,
              height: imageWidth,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://p5.ssl.qhimgs1.com/sdr/400__/t01a84dea7a40b556df.jpg"),
                ),
                borderRadius: BorderRadius.circular(4)
              ),
            ),
            SizedBox(height: 6),
            Text(
              "苏打粉看了两块",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        );
      },
      itemCount: 3,
    );
  }
}