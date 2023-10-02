// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    var gambar = [
      'asset/image/profil-beni.png',
      'asset/image/sukuna.png',
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ben_kusma',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('asset/icon/Icons-plus.svg')),
            Stack(alignment: Alignment.center, children: [
              IconButton(
                  onPressed: () {
                    bottomSheet(context);
                  },
                  icon: SvgPicture.asset('asset/icon/Icons-more.svg')),
              Positioned(
                top: 8,
                right: 6,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                  ),
                  child: const Center(
                      child: Text(
                    '2',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            ]),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 38,
                                  backgroundColor: Colors.grey[300]!,
                                  child: ClipOval(
                                    child: Image.asset(
                                        'asset/image/profil-beni.png'),
                                  ),
                                ),
                                SvgPicture.asset(
                                  'asset/icon/StoryRing.svg',
                                  width: 90,
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue,
                                    ),
                                    width: 32,
                                    height: 32,
                                    child: const Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 28),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Column(
                              children: [
                                Text(
                                  '15',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Postingan'),
                              ],
                            ),
                            const Column(
                              children: [
                                Text(
                                  '5,867',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Pengikut'),
                              ],
                            ),
                            const Column(
                              children: [
                                Text(
                                  '613',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Mengikuti'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      const SizedBox(
                        width: 375,
                        child: Text(
                          'Beni Adam',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 6),
                      SizedBox(
                        width: 375,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Vice Captain at ',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black), // Warna pertama
                              ),
                              TextSpan(
                                text: '@forst.if',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.blue[900]), // Warna ketiga
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const SizedBox(
                        width: 375,
                        child: Text(
                          '.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const SizedBox(
                        width: 375,
                        child: Text(
                          'Art is love, or love is art?',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(31, 68, 68, 68),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(
                              width: 350,
                              child: Text(
                                'Dasbor profesional',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 4),
                            SizedBox(
                              width: 350,
                              child: Text(
                                '557 akun dijangkau dalam 30 hari terakhir.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: 380,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              width: 186,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color.fromARGB(31, 68, 68, 68),
                              ),
                              child: const Text(
                                'Edit profil',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              width: 186,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color.fromARGB(31, 68, 68, 68),
                              ),
                              child: const Text(
                                'Bagikan profil',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          const SizedBox(width: 12),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                radius: 27,
                                child: ClipOval(
                                  child: Image.asset('asset/image/sorotan.png'),
                                ),
                              ),
                              SvgPicture.asset(
                                'asset/icon/icon-sorotan-ring.svg',
                                width: 60,
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          Container(
                            width: 60,
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color:
                                    Colors.black, // Set the border color here
                                width: 1.5, // Set the border width here
                              ),
                            ),
                            child: const Text(
                              '+',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      TabBar(
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(
                              icon: SvgPicture.asset(
                                  'asset/icon/profil-grid.svg')),
                          Tab(
                              icon: SvgPicture.asset(
                                  'asset/icon/profil-reels.svg')),
                          Tab(
                              icon: SvgPicture.asset(
                                  'asset/icon/profil-tag.svg')),
                        ],
                      ),
                      // ),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(children: [
              Center(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(gambar[index]);
                  },
                ),
              ),
              const Center(child: Text('Halaman 2')),
              const Center(child: Text('Halaman 3')),
            ]),
          ),
        ),
      ),
    );
  }

  Future<dynamic> bottomSheet(BuildContext context) {
    return showModalBottomSheet(
      showDragHandle: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize:
              MainAxisSize.min, // Atur ukuran utama agar sesuai dengan konten
          children: <Widget>[
            const SizedBox(
              height: 50,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Thread'),
                trailing: Container(
                  width: 45,
                  height: 23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    'BARU',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Insight'),
              ),
            ),
            const SizedBox(
              height: 45,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Aktivitas Anda'),
              ),
            ),
            const SizedBox(
              height: 45,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Arsip'),
              ),
            ),
            const SizedBox(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Kode QR'),
              ),
            ),
            const SizedBox(
              height: 45,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Disimpan'),
              ),
            ),
            const SizedBox(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengawasan'),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Verifikasi Meta'),
                trailing: Container(
                  width: 45,
                  height: 23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    'BARU',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Reman Dekat'),
              ),
            ),
            const SizedBox(
              height: 45,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Favorit'),
              ),
            ),
            const SizedBox(
              height: 45,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Temukan Orang'),
              ),
            ),
          ],
        );
      },
    );
  }
}
