import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                size: 30,
              ),
              label: "Calendario"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.api,
              size: 30,
            ),
            label: "Calendario",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.verified_user_outlined,
              size: 30,
            ),
            label: "Calendario",
          ),
        ]);
  }
}
