import 'package:demo_widgets/constants/item-type.dart';
import 'package:flutter/material.dart';

class HomeListItemCard extends StatelessWidget {
  final String cover;
  final String title;
  final String username;
  final String useravatar;
  final String likeCount;
  final HomeItemType type;
  final Function onTap;

  const HomeListItemCard(
      {Key key,
      this.cover,
      this.title,
      this.username,
      this.useravatar,
      this.likeCount = "0",
      this.type = HomeItemType.normal, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap,
          child: Container(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Column(
              children: [
                Container(
                  child: Stack(children: [
                    Container(
                      child: Image.network(cover, fit: BoxFit.fitHeight,),
                    )
                  ]),
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    child: Column(children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(useravatar),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: Text(
                            username,
                            style: TextStyle(color: Colors.black87),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )),
                          Icon(Icons.favorite,color: Colors.grey, size: 18,),
                          SizedBox(width: 2),
                          Text(likeCount, style: TextStyle(color: Colors.grey, fontSize: 16),)
                        ],
                      )
                    ]))
              ],
            )),
      ),
    );
  }
}
