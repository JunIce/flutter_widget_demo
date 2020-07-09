import 'package:demo_widgets/pages/detail/detail.dart';
import 'package:demo_widgets/widgets/dismissable.dart';
import 'package:demo_widgets/widgets/sized_box.dart';
import 'package:demo_widgets/xiaohongshu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: XiaoHongShu(),
      routes: {
        'sizedboxdemo': (context) => SizedBoxDemo(),
        'dismissibledemo': (context) => DismissibleDemo(),
        'detail': (context) => DetailPage()
      },
    );
  }
}