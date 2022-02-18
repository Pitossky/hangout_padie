import 'package:flutter/material.dart';

class MyBookings extends StatefulWidget {
  const MyBookings({Key? key}) : super(key: key);

  @override
  _MyBookingsState createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Welcome Paul'),
            ],
          ),
        ),
      ),
    );
  }
}
