import 'package:diregion/screens/main_page/home/home_page.dart';
import 'package:flutter/material.dart';

import '../login_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Login1Screen();
                    }));
                  },
                  child: Container(
                    height: height * 0.04,
                    width: width * 0.35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF002E48)),
                    child: Center(
                      child: Text(
                        'Client',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  child: Container(
                    height: height * 0.04,
                    width: width * 0.35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF002E48)),
                    child: Center(
                      child: Text(
                        'Admin',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
