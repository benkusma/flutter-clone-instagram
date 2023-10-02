import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instragam_clone/homescreen.dart';
import 'package:instragam_clone/profilscreen.dart';
import 'package:instragam_clone/reelsscreen.dart';
import 'package:instragam_clone/searchscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void setSelectedIndex(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          Homescreen(),
          SearchScreen(),
          DefaultScreen(),
          ReelsScreen(),
          ProfilScreen(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          elevation: 100,
          currentIndex: selectedIndex,
          onTap: (index) {
            setSelectedIndex(index);
          },
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: SvgPicture.asset('asset/icon/icon-navbar-home.svg')),
            BottomNavigationBarItem(
                label: 'Home',
                icon: SvgPicture.asset(
                    'asset/icon/icon-navbar-search-rounded.svg')),
            BottomNavigationBarItem(
                label: 'Home',
                icon: SvgPicture.asset('asset/icon/icon-navbar-plus.svg')),
            BottomNavigationBarItem(
                label: 'Home',
                icon: SvgPicture.asset('asset/icon/icon-navbar-reals.svg')),
            BottomNavigationBarItem(
                label: 'Home',
                icon: SizedBox(
                  height: 30,
                  child: ClipOval(
                    child: Image.asset('asset/image/profil-beni.png'),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                        blurRadius: 1,
                      ),
                    ]),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.grey[300]!,
                  child: ClipRRect(
                    child: Image.asset('asset/image/Avatar.png'),
                  ),
                ),
              ),
              SvgPicture.asset(
                'asset/icon/StoryRing.svg',
                width: 74,
              )
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'UserSatu',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
