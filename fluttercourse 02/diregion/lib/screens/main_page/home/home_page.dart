import 'package:diregion/screens/Account.dart';
import 'package:diregion/screens/main_page/home/bottam_navigation/create.dart';
import 'package:diregion/screens/main_page/home/bottam_navigation/manage.dart';
import 'package:diregion/screens/main_page/home/bottam_navigation/reivew.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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
            items: [
              BottomNavigationBarItem(
                icon: SizedBox(
                    height: 15,
                    child: Image.asset(
                      'assets/images/manage.png',
                      color: Color(0xFF000000),
                    )),
                label: "Manage",
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                    height: 15, child: Image.asset('assets/images/review.png')),
                label: "Review",
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
            Manage(),
            Review(),
            Create(),
            Account(),
          ],
        ),
      ),
    );
  }
}
