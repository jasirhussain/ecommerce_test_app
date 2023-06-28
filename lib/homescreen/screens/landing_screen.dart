import 'package:flutter/material.dart';

import '../../util/app_color.dart';
import 'favourate_screen.dart';
import 'homescreen.dart';
import 'profile_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int selectedIndex = 0;
  List pages = [
    const HomeScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];
  void onTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: pages.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 4, spreadRadius: 2, color: Colors.grey.shade300)
          ],
          borderRadius: BorderRadius.circular(20),
          color: AppColor.surface,
        ),
        child: BottomNavigationBar(
          unselectedItemColor: AppColor.secondaryLight,
          elevation: 0,
          fixedColor: AppColor.background,
          backgroundColor: Colors.transparent,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favourite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: selectedIndex,
          onTap: onTapped,
        ),
      ),
    );
  }
}
