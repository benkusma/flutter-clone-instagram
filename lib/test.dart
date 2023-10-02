import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet Example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              _showBottomSheet(
                  context); // Tampilkan BottomSheet dari aksi AppBar
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Klik ikon tiga titik di kanan atas'),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // Atur ukuran utama agar sesuai dengan konten
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () {
                // Tindakan ketika 'Share' dipilih
                Navigator.pop(context); // Tutup BottomSheet
              },
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('Copy Link'),
              onTap: () {
                // Tindakan ketika 'Copy Link' dipilih
                Navigator.pop(context); // Tutup BottomSheet
              },
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Delete'),
              onTap: () {
                // Tindakan ketika 'Delete' dipilih
                Navigator.pop(context); // Tutup BottomSheet
              },
            ),
          ],
        ),
      );
    },
  );
}
