import 'package:flutter/material.dart';
import 'package:location/pages/lounge_pages/cubana_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.white,
        //cardColor: Colors.purple,
      ),
      home: const CubanaScreen(),
    );
  }
}

