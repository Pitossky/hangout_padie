import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/pages/bottom_nav_pages/password_change_screen.dart';
import '../booking_screen.dart';
import 'edit_profile_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 15.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.highlight_off),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 35.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => EditProfileScreen(),
                              ),
                            );
                          },
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.edit,
                                size: 25,
                              ),
                              SizedBox(
                                width: 55,
                              ),
                              Text(
                                'Edit Profile',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 55,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ChangePasswordScreen(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.lock_open,
                                size: 25,
                              ),
                              SizedBox(
                                width: 55,
                              ),
                              Text(
                                'Change Password',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 75,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFFF5403),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 35.0,
                                vertical: 10.0,
                              ),
                              child: Text(
                                'BOOK NOW',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const BookingScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 250,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            child: const Text(
                              'SIGN OUT',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const BookingScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Column(
                children: const [
                  Text(
                    'My Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/profile_picture.png',
                    ),
                    radius: 110,
                    //maxRadius: 100,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Text(
                    'Paul Osho',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'paulosho2015@gmail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '+2348068473066',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Lagos, Nigeria',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.125,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF5403),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 35.0,
                    vertical: 10.0,
                  ),
                  child: Text(
                    'BOOK NOW',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const BookingScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
