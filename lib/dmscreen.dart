// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class DmScreen extends StatefulWidget {
  const DmScreen({super.key});

  @override
  State<DmScreen> createState() => _DmScreenState();
}

class _DmScreenState extends State<DmScreen> {
  var gambar = [
    'asset/image/profil-beni.png',
    'asset/image/sukuna.png',
    'asset/image/post.png',
    'asset/image/avatar2.png',
    'asset/image/avatar3.png',
  ];
  var orang = [
    'Catatan Anda',
    'sukuna',
    'gojo',
    'anjing',
    'anjing2',
  ];
  var profil = [
    'asset/image/sukuna.png',
    'asset/image/post.png',
    'asset/image/avatar2.png',
    'asset/image/avatar3.png',
    'asset/image/sukuna.png',
    'asset/image/post.png',
    'asset/image/avatar2.png',
    'asset/image/avatar3.png',
  ];
  var nama = [
    'sukuna',
    'gojo',
    'anjing',
    'anjing2',
    'sukuna',
    'gojo',
    'anjing',
    'anjing2',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: const Text(
          'ben_kusma',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.show_chart)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.tab))
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    width: 340,
                    height: 36,
                    decoration: BoxDecoration(
                        color: const Color(0xffefefef),
                        borderRadius: BorderRadius.circular(12)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(6),
                        border: InputBorder.none,
                        prefixIcon:
                            Icon(Icons.search, size: 28, color: Colors.black54),
                        hintText: 'Cari',
                        hintStyle:
                            TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ),
                  const Text(
                    'Filter',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 410,
                  height: 146,
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.only(top: 12, left: 12, right: 12),
                    itemCount: orang.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(right: 16, top: 4),
                      // color: Colors.amber,
                      child: Center(
                          child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                // color: Colors.black12,
                                height: 105,
                                width: 80,
                                alignment: Alignment.bottomCenter,
                                child: CircleAvatar(
                                  radius: 34,
                                  child: ClipOval(
                                    child: Image.asset(
                                      gambar[index],
                                      width: 76,
                                      height: 76,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(
                                      top: 4, bottom: 4, left: 10, right: 10),
                                  width: 80,
                                  height: 42,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color.fromARGB(
                                              255, 195, 195, 195),
                                          blurRadius: 4.0,
                                          spreadRadius: 0.1,
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16)),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'tutorkan dong puh sepuhhhhh',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ))
                            ],
                          ),
                          Text(orang[index],
                              style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                              )),
                        ],
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 32,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xffe1f0fc),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Container(
                          height: 6,
                          width: 6,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(width: 6),
                        const Center(
                            child: Text(
                          'Utama 9',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    height: 32,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xffefefef),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                        child: Text(
                      'Umum',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    height: 32,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xffefefef),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                        child: Text(
                      'Saluran',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    height: 32,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xffefefef),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Row(
                      children: [
                        Container(
                          height: 6,
                          width: 6,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          'Permintan ',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const Text('1'),
                      ],
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 410,
              height: 500,
              child: ListView.builder(
                // padding: EdgeInsets.symmetric(vertical: 12),
                itemCount: nama.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(top: 0),
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      if (index == 0)
                        Stack(children: [
                          SizedBox(
                              width: 410,
                              // height: 500,
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 26,
                                  child: ClipOval(
                                    child: Image.asset(
                                      'asset/image/jokowi.jpg',
                                      // fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                title: const Text(
                                  'Jokowi',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: const Row(
                                  children: [
                                    Text(
                                      'Ada lancar project boss?',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      ' • 1 jam',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                trailing: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 32,
                                  color: Colors.black,
                                ),
                              )),
                          Positioned(
                            right: 65,
                            top: 33,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ]),
                      if (index == 0)
                        Stack(children: [
                          SizedBox(
                              width: 410,
                              // height: 500,
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 26,
                                  child: ClipOval(
                                    child: Image.asset(
                                      'asset/image/prabowo.png',
                                      // fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                title: const Text(
                                  'Prabowo',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: const Row(
                                  children: [
                                    Text(
                                      'Oke, siap ndan!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      ' • 2 jam',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                trailing: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 32,
                                  color: Colors.black,
                                ),
                              )),
                          Positioned(
                            right: 65,
                            top: 33,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ]),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 26,
                          child: ClipOval(
                            child: Image.asset(
                              profil[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          nama[index],
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              'Pesan dari ${nama[index]}',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 16),
                            ),
                            const Text(' • 4 jam')
                          ],
                        ),
                        trailing: const Icon(
                          Icons.camera_alt_outlined,
                          size: 32,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
