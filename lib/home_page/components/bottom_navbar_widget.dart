import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.black,
      unselectedLabelStyle: const TextStyle(
        color: Colors.black,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.verified_user,
            size: 23,
          ),
          label: 'You',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.business,
          ),
          label: 'Business',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'List',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Orders',
        ),
      ],
    );
  }
}
