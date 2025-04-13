import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:doctors_mobile/Bookings/Tab/TabBookings.dart';
import 'package:doctors_mobile/Bookings/Views/Bookings.dart';
import 'package:doctors_mobile/Chat/Views/Chat.dart';
import 'package:doctors_mobile/Chat/Views/Users.dart';
import 'package:doctors_mobile/Home/Components/Card.dart';
import 'package:doctors_mobile/Home/Views/Home.dart';
import 'package:doctors_mobile/Profile/Views/ProfileView.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

enum _SelectedTab { home, favorite, add, search, person }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectedTab = _SelectedTab.home;
  PageController pageController = PageController();

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
      pageController.jumpToPage(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  children: [
                    UpcomingSchedule(),
                    TabBookings(),
                    Users(),
                    ProfileView()
                  ],
                ),
              ),
            ],
          )),
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        indicatorColor: const Color(0xFF0B4F6C),
        enableFloatingNavBar: true,
        items: [
          CrystalNavigationBarItem(
            icon: IconlyBold.home,
            unselectedIcon: IconlyLight.home,
            selectedColor: Colors.black,
          ),
          CrystalNavigationBarItem(
            icon: IconlyBold.bookmark,
            unselectedIcon: IconlyLight.bookmark,
            selectedColor: Colors.black,
          ),
          CrystalNavigationBarItem(
            icon: IconlyBold.chat,
            unselectedIcon: IconlyLight.chat,
            selectedColor: Colors.black,
          ),
          CrystalNavigationBarItem(
            icon: IconlyBold.profile,
            unselectedIcon: IconlyLight.profile,
            selectedColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
