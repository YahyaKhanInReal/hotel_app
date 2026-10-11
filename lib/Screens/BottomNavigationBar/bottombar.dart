import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/Screens/HomeScreen/home_screen.dart';
import 'package:hotel_app/Screens/HomeScreen/my_booking.dart';
import 'package:hotel_app/Screens/NotificationsList/notifications_list.dart';
import 'package:hotel_app/Screens/Profile/profile.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Widget> bottomBarList = [
    HomeScreen(),
    MyBookingScreen(),
    ProfileScreen()
  ];
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomBarList.elementAt(screenIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Appcolors.primaryColor,
        unselectedItemColor: Colors.grey.shade800,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: .fixed,
        onTap: (value){
          setState(() {
            screenIndex = value;
          });
        },
        currentIndex: screenIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.square_text),
            label: "My Booking",
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.user),
            label: "My Profile",
          ),
        ],
      ),
    );
  }
}
