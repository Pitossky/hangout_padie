import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/pages/bottom_nav_pages/profile_page.dart';
import 'package:location/widgets/custom_navbar.dart';


class EditProfileScreen extends StatefulWidget {

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  int index = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Icon(Icons.menu),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Column(
                children: [
                  const Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade400,
                    radius: 110,
                    //maxRadius: 100,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Change Profile Picture',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Name:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Paul Osho',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children: const [
                      Text(
                        'Email:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'paulosho2015@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children: const [
                      Text(
                        'Phone Number:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        '+2348068473066',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children: const [
                      Text(
                        'Location:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Lagos, Nigeria',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
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
                    'UPDATE',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  CustomNavBar(),
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
