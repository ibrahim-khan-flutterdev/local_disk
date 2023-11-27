import 'package:diregion/screens/createdetails.dart';
import 'package:diregion/screens/dashboarb.dart';
import 'package:diregion/screens/homescreen.dart';
import 'package:flutter/material.dart';

import 'Account.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 20,
            selectedItemColor: Color(0xFF808080),
            currentIndex: index,
            onTap: (newIndex) {
              setState(() {
                index = newIndex;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xFF808080),
                  ),
                  label: "Home",
                  tooltip: "Home"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.density_small,
                  color: Color(0xFF808080),
                ),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Color(0xFF808080),
                ),
                label: "Create",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color(0xFF808080),
                ),
                label: "Account",
              ),
            ]),
        body: IndexedStack(
          index: index,
          children: const [
            // Home1(),
            Group(),
            DashboarbScreen(),
            ContentScreen(),
            Account(),
          ],
        ),
      ),
    );
  }
}
