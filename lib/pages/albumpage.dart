import 'package:flutter/material.dart';

class AlbumPage extends StatefulWidget {
  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[const Text('AlbumPage')],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("ホーム")),
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
