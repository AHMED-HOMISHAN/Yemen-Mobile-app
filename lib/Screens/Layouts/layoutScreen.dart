// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:yemenmobile/Components/const.dart';
import 'package:yemenmobile/Screens/Pages/contactUs.dart';
import 'package:yemenmobile/Screens/Pages/favorites.dart';
import 'package:yemenmobile/Screens/Pages/homeScreen.dart';
import 'package:yemenmobile/Screens/Pages/info.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;
  List<Widget> screens = const [
    HomeScreen(),
    FavoriteScreen(),
    ContactUs(),
    InfoScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: primaryColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  IconlyBroken.home,
                ),
                label: 'الرئيسية'),
            BottomNavigationBarItem(
                icon: Icon(IconlyBroken.heart), label: 'المفضلة'),
            BottomNavigationBarItem(
                icon: Icon(IconlyBroken.calling), label: 'تواصل معنا'),
            BottomNavigationBarItem(
                icon: Icon(IconlyBroken.setting), label: 'معلومات'),
          ]),
    );
  }
}
