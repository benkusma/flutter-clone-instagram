import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView.builder(
            itemCount: 4,
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              setState(() {
                currentindex = index;
              });
            },
            itemBuilder: (context, index) {
              Color backgroundcolor =
                  index % 2 == 0 ? Colors.black54 : Colors.black45;
              return Container(
                  color: backgroundcolor,
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        height: 60,
                        width: double.infinity,
                        // color: Colors.purple,
                        child: Row(
                          children: [
                            Flexible(
                                flex: 5,
                                child: Container(
                                  // color: Colors.green,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 24,
                                            child: ClipOval(
                                              child: Image.asset(
                                                  'asset/image/sukuna.png'),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text(
                                            'akbar_ganteng99',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(width: 8),
                                          SizedBox(
                                            height: 30,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                  side: const BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8) // Border radius 12
                                                      ),
                                                ),
                                                onPressed: () {},
                                                child: const Text(
                                                  'Ikuti',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                            Flexible(
                                child: Container(
                              width: double.infinity,
                              // color: Colors.grey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const SizedBox(height: 4),
                                  const Icon(
                                    Icons.favorite_outline,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    '62,8rb',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(height: 16),
                                  SvgPicture.asset(
                                      'asset/icon/icon-chat-bubble.svg',
                                      color: Colors.white,
                                      width: 28),
                                  const SizedBox(height: 4),
                                  const Text(
                                    '42,8rb',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(height: 16),
                                  SvgPicture.asset('asset/icon/Icons-share.svg',
                                      color: Colors.white, width: 28),
                                  const SizedBox(height: 4),
                                  const Text(
                                    '62,8rb',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(height: 16),
                                  const Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ))
                          ],
                        ),
                      )),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 16),
                        // height: 60,
                        width: double.infinity,
                        // color: Colors.pink,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text('akbar_ganteng99 • Audio asli',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                )),
                            Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Image.asset('asset/image/sukuna.png'),
                            )
                          ],
                        ),
                      )
                    ],
                  ));
            },
          ),
          if (currentindex == 0)
            const Positioned(
                top: 16,
                left: 16,
                child: Text(
                  'Reels',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
          const Positioned(
              top: 16,
              right: 16,
              child: Icon(
                Icons.camera_alt_outlined,
                size: 32,
                color: Colors.white,
              ))
        ],
      )),
    );
  }
}
