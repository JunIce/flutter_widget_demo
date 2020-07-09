import 'package:flutter/material.dart';

class DetailDislikeButton extends StatelessWidget {

  final Function onTap;

  const DetailDislikeButton({
    Key key, this.onTap,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap,
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal:6 ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Colors.grey)
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Icon(Icons.satellite, size: 14, color: Colors.grey,),
          SizedBox(width: 4,),
          Text("不喜欢",style: TextStyle(fontSize: 12, color: Colors.grey),)
        ],),
      ),
    );
  }
}