import 'package:flutter/material.dart';

class IconTag extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function onTap;

  const IconTag({
    Key key, this.icon, this.label, this.onTap,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap,
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal:12 ),
        decoration: BoxDecoration(
          color: Color(0xfff1f1f1),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Icon(icon, size: 14, color: Colors.blueAccent,),
          SizedBox(width: 6,),
          Text(label,style: TextStyle(fontSize: 14, color: Colors.blueAccent),)
        ],),
      ),
    );
  }
}