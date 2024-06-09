// import 'package:flutter/material.dart';
// import 'package:quick_social/app.dart';
//
// void main() => runApp(const MyApp());


import 'package:flutter/material.dart';
import 'package:quick_social/theme.dart';
import 'package:quick_social/pages/feed_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Social',
      theme: appTheme(),
      home: FeedPage(),
    );
  }
}
