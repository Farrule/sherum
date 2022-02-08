import 'package:flutter/material.dart';

class AlbumHome extends StatefulWidget {
  AlbumHome({Key? key}) : super(key: key);

  @override
  State<AlbumHome> createState() => _AlbumHomeState();
}

class _AlbumHomeState extends State<AlbumHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlbumHome'),
        centerTitle: true,
        elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu)
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}