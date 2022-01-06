import 'package:flutter/material.dart';
import 'package:sherum/pages/home_page.dart';
import 'package:sherum/pages/album_page.dart';
import 'package:sherum/pages/search_page.dart';
import 'package:sherum/pages/my_page.dart';

class Common {
  static const int _primaryValue = 0xFFF8BBD0;
  static const MaterialColor primaryColor = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFF8BBD0),
      100: Color(0xFFF8BBD0),
      200: Color(0xFFF8BBD0),
      300: Color(0xFFF8BBD0),
      400: Color(0xFFF8BBD0),
      500: Color(_primaryValue),
      600: Color(0xFFF8BBD0),
      700: Color(0xFFF8BBD0),
      800: Color(0xFFF8BBD0),
      900: Color(0xFFF8BBD0),
    },
  );
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sherum main',
      theme: ThemeData(
        primarySwatch: Common.primaryColor,
      ),
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

  static List<Widget> _pageList = [
    HomePage(),
    AlbumPage(),
    SearchPage(),
    MyPage()
  ];

  List<BottomNavigationBarItem> MyBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: 'Album',
        activeIcon: Icon(Icons.auto_stories),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        label: 'MyPage',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_page],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        onTap: (index) {
          setState(() {
            _page = index;
          }); // setState
        }, // onTap
        items: MyBottomNavBarItems(),
      ),
    );
  }
}
