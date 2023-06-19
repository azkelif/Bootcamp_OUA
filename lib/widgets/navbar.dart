import 'package:flutter/material.dart';
import '../screens/car.dart';
import '../screens/favorite.dart';
import '../screens/home.dart';
import '../screens/profile.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int _currentIndex = 0;
  List pages = [
    const home(),
    const car(),
    const favorite(),
    const profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home_rounded), label: "Home"),
        NavigationDestination(icon: Icon(Icons.car_crash_rounded), label: "Car"),
        NavigationDestination(icon: Icon(Icons.star), label: "Favorite"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
      ],
        selectedIndex: _currentIndex,
        onDestinationSelected: (value){
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}