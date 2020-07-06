import 'package:flutter/material.dart';

class DemoHomePage extends StatefulWidget {
  @override
  _DemoHomePageState createState() => _DemoHomePageState();
}

class _DemoHomePageState extends State<DemoHomePage> {
  List<String> _tabs = [
    "SizedBox",
    "Dismissible",
    "SizedBox",
    "SizedBox",
    "SizedBox",
    "SizedBox",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("组件Demo"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemCount: _tabs.length,
            itemBuilder: (BuildContext context, int index) {
              return GridItem(
                text: _tabs[index],
              );
            },
          )
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(text.toLowerCase() + "demo");
      },
      child: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
