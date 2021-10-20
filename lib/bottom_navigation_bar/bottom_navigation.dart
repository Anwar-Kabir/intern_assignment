import 'package:flutter/material.dart';
import 'package:intern_assignment/bottom_navigation_bar/account.dart';
import 'package:intern_assignment/bottom_navigation_bar/favourite.dart';
import 'package:intern_assignment/bottom_navigation_bar/save.dart';
import 'package:intern_assignment/bottom_navigation_bar/shop.dart';
import 'package:intern_assignment/home_main/home_main.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _currentIndex = 0;
  var pages = [
    HomeMain(),
    Favourite(),
    Shop(),
    Save(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemSelected,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: (""),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: (""),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: (""),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: (""),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: (""),
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }

  void _onItemSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

}

