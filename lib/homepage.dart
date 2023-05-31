// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:ui_instagram_clone/pages/account.dart';
import 'package:ui_instagram_clone/pages/home.dart';
import 'package:ui_instagram_clone/pages/reels.dart';
import 'package:ui_instagram_clone/pages/search.dart';
import 'package:ui_instagram_clone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'reels'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
          ]),
    );
  }
}
