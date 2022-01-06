import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Start sherum.',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("ホーム")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("設定")),
        ],
        // ナビゲーションバーのいずれかのボタンがタップされたら
        onTap: (int index) {
          print(index); // デバッグ用に出力（タップされたボタンによって数値がかわる）
          if (index == 0) {
            Navigator.of(context).pushNamed("/homepage");
          } else if (index == 1) {
            Navigator.of(context).pushNamed("/albumpage");
          }
        },
      ),
    );
  }
}
