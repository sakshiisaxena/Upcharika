import 'package:flutter/material.dart';
import 'package:upcharika/Dashboard.dart';
import 'package:upcharika/HeartRate.dart';
import 'package:upcharika/Home.dart';
import 'package:upcharika/homePage.dart';
import 'package:upcharika/level.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upcharika',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavbar(),
    );
  }
}

// ------------------this class is for bottom navigation------------
class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MyHomePage(),
    Dashboard(),
    HeartRate(),
    level(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upcharika'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: 'Dashboard',
            icon: Icon(
                Icons.home, color:
                Colors.black),
          ),
          BottomNavigationBarItem(
            label: 'Dashboard',
            icon: Icon(
                Icons.account_box_outlined,
                color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: 'Heart Rate',
            icon: Icon(
              Icons.wallet_membership,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Spo2 level',
            icon: Icon(
              Icons.analytics_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
