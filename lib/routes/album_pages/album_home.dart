import 'package:flutter/material.dart';
import 'package:sherum/routes/album_pages/album_add.dart';
import 'package:sherum/routes/album_pages/album_page.dart';

class AlbumHome extends StatefulWidget {
  @override
  _AlbumHomeState createState() => _AlbumHomeState();
}

class _AlbumHomeState extends State<AlbumHome> {
  List<String> AlbumList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text('AlbumHome'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              final newAlbumText = await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return AlbumAdd();
                }),
              );
              if (newAlbumText != null) {
                setState(() {
                  AlbumList.add(newAlbumText);
                });
              }
            },
            icon: Icon(Icons.add),
          ),
        ], // actions
      ),
      body: ListView.builder(
          itemCount: AlbumList.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: UniqueKey(),
              child: Card(
                child: ListTile(
                    title: Text(AlbumList[index]),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return AlbumPage();
                      }));
                    }),
              ),
              onDismissed: (direction) {
                setState(() {
                  AlbumList.removeAt(index);
                });
              },
            );
          }),
    );
  }
}
