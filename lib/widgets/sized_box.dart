import 'package:flutter/material.dart';

class SizedBoxDemo extends StatefulWidget {
  @override
  _SizedBoxDemoState createState() => _SizedBoxDemoState();
}

class _SizedBoxDemoState extends State<SizedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SizedBox")),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Container(
                color: Colors.blueAccent,
                child: Center(
                  child: Text("200x200"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
