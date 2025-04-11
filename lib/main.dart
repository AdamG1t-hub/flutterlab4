import 'package:flutter/material.dart';
import 'base/bottom_nav_bar.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
  var test = TestClass(x:2, y:3);

}

class TestClass {
  int x;
  int y;

  TestClass({required this.x, required this.y});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}


