import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// * page files
import 'package:sherum/pages/home_page.dart';
import 'package:sherum/pages/album_page.dart';
import 'package:sherum/pages/search_page.dart';
import 'package:sherum/pages/my_page.dart';
// * theme files
import 'package:sherum/theme/light_theme.dart';
import 'package:sherum/theme/dark_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      appBar: AppBar(
        title: const Text('SHERUM'),
      ),
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
