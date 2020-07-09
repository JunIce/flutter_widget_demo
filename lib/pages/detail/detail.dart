import 'package:demo_widgets/components/detail-dislike-button.dart';
import 'package:demo_widgets/components/icon-tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> _images = [
    "https://p5.ssl.qhimgs1.com/bdr/326__/t011763a163ad870dd5.jpg",
    "https://p0.ssl.qhimgs1.com/bdr/326__/t0160c8456511be3c4e.jpg",
    "https://p1.ssl.qhimgs1.com/bdr/326__/t013bfdb724ccde6227.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Detail"), elevation: 0),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            _buildDetailSwiper(), 
            _buildDetailContext(),

            Padding(padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10), child: Divider(),),
            
          ],
        ));
  }

  Widget _buildDetailSwiper() {
    return Container(
      height: 600,
      child: Swiper(
        outer: true,
        itemCount: _images.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(_images[index], fit: BoxFit.cover);
        },
        pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
                color: Colors.grey,
                activeColor: Colors.red,
                size: 8,
                activeSize: 8,
                space: 4)),
      ),
    );
  }

  Widget _buildDetailContext() {
    var title = "生日礼物Vlog❤️你是我爱的少年，平凡有爱38岁暖爸还是妈妈心中的样子呀";
    var context =
        "年龄已经只是一个数字，心态和外表，调皮爱开玩笑，却多了对家的担当和责任～小朋友都期待生日，热热闹闹的，我和暖爸似乎在给自己过生日的仪式感上，没那么注意～特别是有了暖暖，暖妈一个炸酱面就很满足，暖爸一双喜欢的鞋，就很开心～再加上暖妈亲手做的炒年糕，爸爸就幸福的起飞了哈哈～😘";

    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child:
              Text(title, style: TextStyle(fontSize: 18, color: Colors.black)),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(context,
              style: TextStyle(fontSize: 16, color: Colors.black87)),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(children: [
            IconTag(
              onTap: () {},
              icon: Icons.ac_unit,
              label: "穿衣搭配",
            )
          ]),
        ),
        SizedBox(height: 4),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("6-25",
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
                DetailDislikeButton(onTap: () {})
              ]),
        )
      ],
    );
  }
}
