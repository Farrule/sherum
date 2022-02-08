import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
// * page files
import 'package:sherum/routes/home_pages/home_page.dart';
import 'package:sherum/routes/album_pages/album_home.dart';
import 'package:sherum/routes/search_pages/search_page.dart';
import 'package:sherum/routes/my_pages/my_page.dart';
// * theme files
import 'package:sherum/theme/light_theme.dart';
import 'package:sherum/theme/dark_theme.dart';
// * assets files
import 'package:sherum/my_flutter_app_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sherum main',
      theme: LightTheme.data,
      darkTheme: DarkTheme.data,
      home: AppPage(),
    );
  }
}

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int _page = 0;

  static final List<Widget> _pageList = [
    HomePage(),
    AlbumHome(),
    SearchPage(),
    MyPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_page],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        onTap: (index) {setState(() {_page = index;});}, // onTap
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            activeIcon: Icon(Icons.auto_stories),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon: Icon(MyFlutterApp.search_2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: '',
          ),
        ],
      ),
    );
  }
}