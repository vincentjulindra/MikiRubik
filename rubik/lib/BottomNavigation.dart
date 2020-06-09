import 'package:flutter/material.dart';
import 'FourthScreen.dart';
import 'MyHomePage.dart';
import 'Profile.dart';
import 'HomeScreen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() =>
      _BottomNavigationState();
}

class _BottomNavigationState
    extends State<BottomNavigation> {
  final List<Widget> pages = [
    MyHomePage(),
    HomeScreen(),
    ProfileScreen()
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(

    onTap: (int index) => setState(() => _selectedIndex = index),
    currentIndex: selectedIndex,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.book), title: Text('Tutorial')),
      BottomNavigationBarItem(
          icon: Icon(Icons.home), title: Text('Timer Rubik')),
      BottomNavigationBarItem(
          icon: Icon(Icons.person), title: Text('Profile')),
    ],
    fixedColor: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}