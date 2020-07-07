import 'package:flutter/material.dart';

class UserFollowBtn extends StatelessWidget {
  final bool isFollow;

  const UserFollowBtn({Key key, this.isFollow = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = !isFollow ? Colors.red : Colors.grey;
    String text = isFollow ? "已关注" : "关注";
    return InkWell(
        child: Container(
      width: 50,
      height: 30,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: color),
          borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: color, fontSize: 12),
        ),
      ),
    ));
  }
}
