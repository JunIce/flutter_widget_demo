import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class DismissibleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible")
      ),
      body: Column(
        children: [
          Dismissible(
            key: UniqueKey(),
            child: ListTile(
              title: Text("This is demo Dismissible"),
              subtitle: Text("左右滑动查看效果"),
            ),
            background: Container(color: Colors.red),
            secondaryBackground: Container(color: Colors.yellow),
            onDismissed: (direction){
              print(direction);
              Fluttertoast.showToast(msg: '${direction}');
            },
          ),
        ]
      ),
    );
  }

  void onDismissed(){

  }
}