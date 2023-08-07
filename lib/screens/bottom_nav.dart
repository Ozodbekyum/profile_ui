import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.blue,
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border_outlined,
            color: Colors.blue,
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.data_usage_outlined,
            color: Colors.blue,
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.location_on_outlined,
            color: Colors.blue,
          ),
          label: ''),
    ]);
  }
}
