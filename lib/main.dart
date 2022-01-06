import 'package:flutter/material.dart';
import 'package:sherum/pages/homepage.dart';
import 'package:sherum/pages/albumpage.dart';
import 'package:sherum/pages/findpage.dart';
import 'package:sherum/pages/mypage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sherum main',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/homepage': (BuildContext context) => HomePage(),
        '/albumpage': (BuildContext context) => AlbumPage(),
      },
    );
  }
}
