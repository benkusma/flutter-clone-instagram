import 'package:flutter/material.dart';
import 'package:instragam_clone/dmscreen.dart';
import 'package:instragam_clone/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black))),
      home: const HomePage(),
      routes: {
        '/dmscreen': (context) => const DmScreen(),
        // '/b': (context) => const ScreenB(),
      },
    );
  }
}
