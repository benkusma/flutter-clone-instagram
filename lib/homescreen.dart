import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    var gambar = [
      'asset/image/profil-beni.png',
      'asset/image/sukuna.png',
      'asset/image/post.png',
      'asset/image/avatar1.png',
      'asset/image/avatar2.png',
      'asset/image/avatar3.png',
      'asset/image/Avatar.png',
    ];
    var orang = [
      'Anda',
      'sukuna',
      'gojo',
      'kucing',
      'anjing',
      'anjing2',
      'kucing2',
    ];
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverAppBar(
            // pinned: true,
            floating: true,
            title: Image.asset('asset/icon/IG-Logo.png'),
            actions: [
              Stack(alignment: Alignment.center, children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline,
                        color: Colors.black, size: 32)),
                Positioned(
                  top: 14,
                  right: 10,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                  ),
                ),
              ]),
              Stack(alignment: Alignment.center, children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/dmscreen');
                    },
                    icon: SvgPicture.asset('asset/icon/icon-dm.svg')),
                Positioned(
                  top: 8,
                  right: 6,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                    child: const Center(
                        child: Text(
                      '9',
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
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  width: 400,
                  height: 95,
                  // height: 120,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 8),
                    itemCount: orang.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      // width: 100,
                      // height: 100,
                      margin: const EdgeInsets.only(right: 12),
                      // color: Colors.amber,
                      child: Center(
                          child: Column(
                        children: [
                          Center(
                              child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[300]!,
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                      ),
                                    ]),
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.grey[300]!,
                                  child: ClipOval(
                                    child: Image.asset(gambar[index]),
                                  ),
                                ),
                              ),
                              SvgPicture.asset(
                                'asset/icon/StoryRing.svg',
                                width: 74,
                              )
                            ],
                          )),
                          Center(
                            child: Text(orang[index],
                                style: const TextStyle(
                                  fontSize: 16,
                                  // fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  children: [
                    const SizedBox(width: 13),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300]!,
                                    spreadRadius: 1,
                                    blurRadius: 1),
                              ]),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.grey[300]!,
                            child: ClipOval(
                              child: Image.asset('asset/image/sukuna.png'),
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          'asset/icon/Story-ring-post.svg',
                          width: 40,
                        )
                      ],
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Sukuna',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 270),
                    const Icon(Icons.more_vert),
                  ],
                ),
                Image.asset('asset/image/post.png'),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 12),
                    const Icon(Icons.favorite_outline, size: 32),
                    const SizedBox(width: 12),
                    SvgPicture.asset('asset/icon/icon-chat-bubble.svg',
                        width: 28),
                    const SizedBox(width: 12),
                    SvgPicture.asset('asset/icon/Icons-share.svg', width: 28),
                    const SizedBox(width: 245),
                    SvgPicture.asset('asset/icon/icon-save.svg', width: 28),
                  ],
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    SizedBox(width: 12),
                    Text('1.837 suka',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                  ],
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    SizedBox(width: 12),
                    Text('Sukuna  ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                    Text('Oops bagi dua!', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    SizedBox(width: 12),
                    Text('Oops bagi dua!',
                        style: TextStyle(fontSize: 16, color: Colors.black54)),
                  ],
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    SizedBox(width: 12),
                    Text('2 jam lalu',
                        style: TextStyle(fontSize: 16, color: Colors.black54)),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const SizedBox(width: 13),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300]!,
                                    spreadRadius: 1,
                                    blurRadius: 1),
                              ]),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.grey[300]!,
                            child: ClipOval(
                              child: Image.asset('asset/image/sukuna.png'),
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          'asset/icon/Story-ring-post.svg',
                          width: 40,
                        )
                      ],
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Sukuna',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 270),
                    const Icon(Icons.more_vert),
                  ],
                ),
                Image.asset('asset/image/post.png'),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 12),
                    const Icon(Icons.favorite_outline, size: 32),
                    const SizedBox(width: 12),
                    SvgPicture.asset('asset/icon/icon-chat-bubble.svg',
                        width: 28),
                    const SizedBox(width: 12),
                    SvgPicture.asset('asset/icon/Icons-share.svg', width: 28),
                    const SizedBox(width: 245),
                    SvgPicture.asset('asset/icon/icon-save.svg', width: 28),
                  ],
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    SizedBox(width: 12),
                    Text('1.837 suka',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                  ],
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    SizedBox(width: 12),
                    Text('Sukuna  ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                    Text('Oops bagi dua!', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    SizedBox(width: 12),
                    Text('Oops bagi dua!',
                        style: TextStyle(fontSize: 16, color: Colors.black54)),
                  ],
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    SizedBox(width: 12),
                    Text('2 jam lalu',
                        style: TextStyle(fontSize: 16, color: Colors.black54)),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
