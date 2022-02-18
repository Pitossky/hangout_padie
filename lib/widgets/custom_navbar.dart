import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/pages/bottom_nav_pages/my_booking_screen.dart';
import 'package:location/pages/bottom_nav_pages/profile_page.dart';

class CustomNavBar extends StatefulWidget {

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {

  /*
  int currentIndex = 0;
  final List<CustomNavBar> _screens = [
    const Center(child: Text('Home', style: TextStyle(fontSize: 30,),),),
    CustomNavBar(screen: const Center(child: Text('My Contact', style: TextStyle(fontSize: 30,),),),),
    CustomNavBar(screen: const MyBookings(),),
    CustomNavBar(screen: const ProfileScreen(),),
  ];

  List<CustomNavBar> get screens => _screens;

   */

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          iconSize: 20,
          type: BottomNavigationBarType.fixed,
          currentIndex: 3,
          //onTap: (index) => setState(() => currentIndex = index),
          backgroundColor: const Color(0xFFFF5403),
          unselectedItemColor: Colors.white70,
          selectedItemColor: Colors.white,
          //showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.phone,
              ),
              label: 'Contact',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
          ],
        );
  }
}


