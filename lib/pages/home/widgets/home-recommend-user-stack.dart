import 'package:flutter/material.dart';


class HomeRecommendUserStack extends StatelessWidget {
  const HomeRecommendUserStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
                    children:[ Stack(
          overflow: Overflow.visible,
          children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://p5.ssl.qhimgs1.com/sdr/400__/t01aa6b1a083e6e648f.webp"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
              right: -5,
              bottom: -2,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Center(
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.add,
                      size: 16,
                    ),
                  ),
                ),
              ))
        ],),
        SizedBox(height: 6),
        Text("分享瞬间", style: TextStyle(color: Colors.black, fontSize: 14),)
                    ],),
    );
  }
}