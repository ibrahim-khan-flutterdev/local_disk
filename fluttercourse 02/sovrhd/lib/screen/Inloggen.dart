import 'package:flutter/material.dart';
import 'package:sovrhd/screen/drawer_screen.dart';

class WelKomScreen extends StatelessWidget {
  WelKomScreen({Key? key}) : super(key: key);

  var _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: DrawerScreen(),
      ),
      backgroundColor: const Color(0xFF02AA77),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 150,
              left: 15,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF1cdca2)),
                child: InkWell(
                    onTap: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (ctx) {
                      //   return const DrawerScreen();
                      // }));
                      _key.currentState!.openDrawer();
                    },
                    child: Image.asset('assets/images/image14.png')),
              ),
            ),
            Positioned(
              top: 149,
              left: 130,
              right: 115,
              child: Image.asset(
                'assets/Logo/logo1.png',
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 230, 0, 0),
              child: SingleChildScrollView(
                child: Container(
                  height: height * 0.95,
                  width: width * 0.99,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 44,
                        width: 310,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFFf2f2f2)),
                        child: Row(
                          children: [
                            const Icon(Icons.search),
                            Image.asset('assets/images/image13.png')
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset('assets/images/image5.png'),
                      const SizedBox(
                        height: 25,
                      ),
                      Image.asset('assets/images/image10.png'),
                      const SizedBox(
                        height: 15,
                      ),
                      Image.asset('assets/images/image11.png'),
                      const SizedBox(
                        height: 80,
                      ),
                      Row(children: [
                        Image.asset('assets/images/image12.png'),
                        const SizedBox(
                          width: 80,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF02aa77), width: 2),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFF1cdca2),
                                      Color(0xFF02aa77),
                                    ]),
                              ),
                              child: const Icon(Icons.qr_code),
                            ),
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
