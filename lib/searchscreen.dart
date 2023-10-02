import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    var gambar = [
      'https://i.pinimg.com/236x/26/f4/da/26f4da1862f7712b6deeb99bff71d95b.jpg',
      'https://i.pinimg.com/550x/5b/b1/09/5bb109cbbaf919b7d50dd27c5532aa91.jpg',
      'https://i.pinimg.com/236x/80/c5/0c/80c50c72dfa88e20b7b5585f91cdfa03.jpg',
      'https://i.pinimg.com/236x/70/b6/c7/70b6c7347418b5909beb59b231bdae3b.jpg',
      'https://i.pinimg.com/736x/e8/b1/20/e8b1200291a526012202de8cf5d75200.jpg',
      'https://i.pinimg.com/236x/f5/e5/99/f5e599a21428e272dabfccdd0ad415b5.jpg',
      'https://i.pinimg.com/236x/2d/5b/29/2d5b29cdc961675b94b17dd513956f2e.jpg',
      'https://i.pinimg.com/236x/fb/c6/72/fbc672c045f39542ce7280e867274cb3.jpg',
      'https://i.pinimg.com/236x/77/e6/14/77e61465c185a4879402dc06863ea4c1.jpg',
      'https://i.pinimg.com/474x/f7/ea/23/f7ea23023b85f73e1d8a0c8d565294aa.jpg',
      'https://i.pinimg.com/236x/26/f4/da/26f4da1862f7712b6deeb99bff71d95b.jpg',
      'https://i.pinimg.com/550x/5b/b1/09/5bb109cbbaf919b7d50dd27c5532aa91.jpg',
      'https://i.pinimg.com/236x/80/c5/0c/80c50c72dfa88e20b7b5585f91cdfa03.jpg',
      'https://i.pinimg.com/236x/70/b6/c7/70b6c7347418b5909beb59b231bdae3b.jpg',
      'https://i.pinimg.com/736x/e8/b1/20/e8b1200291a526012202de8cf5d75200.jpg',
      'https://i.pinimg.com/236x/f5/e5/99/f5e599a21428e272dabfccdd0ad415b5.jpg',
      'https://i.pinimg.com/236x/2d/5b/29/2d5b29cdc961675b94b17dd513956f2e.jpg',
      'https://i.pinimg.com/236x/fb/c6/72/fbc672c045f39542ce7280e867274cb3.jpg',
      'https://i.pinimg.com/236x/77/e6/14/77e61465c185a4879402dc06863ea4c1.jpg',
      'https://i.pinimg.com/474x/f7/ea/23/f7ea23023b85f73e1d8a0c8d565294aa.jpg',
      'https://i.pinimg.com/236x/26/f4/da/26f4da1862f7712b6deeb99bff71d95b.jpg',
    ];
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 6),
                  width: 380,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(6),
                      border: InputBorder.none,
                      prefixIcon:
                          Icon(Icons.search, size: 28, color: Colors.black),
                      hintText: 'Cari',
                      hintStyle: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
                ),
              ),
            )
          ];
        },
        body: Container(
          color: Colors.black12,
          child: GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            itemCount: gambar.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                gambar[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ),
    );
  }
}
