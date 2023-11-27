import 'package:flutter/material.dart';
import 'package:sovrhd/screen/drawer_screen.dart';
import 'package:sovrhd/screen/naam2_screen.dart';

class NaamScreen extends StatelessWidget {
  NaamScreen({Key? key}) : super(key: key);
  var _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _key,
      drawer: const Drawer(
        child: DrawerScreen(),
      ),
      backgroundColor: const Color(0xFF02aa77),
      body: Stack(children: [
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
                    _key.currentState!.openDrawer();
                  },
                  child: Image.asset('assets/images/image14.png')),
            )),
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
          child: Container(
            height: height * 0.95,
            width: width * 0.99,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Column(
                children: [
                  Container(
                    height: 44,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFf2f2f2),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search),
                        Image.asset('assets/images/image13.png')
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(41, 60, 0, 0),
                        child: Container(
                          height: 31,
                          width: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFF02aa77)),
                          child: Image.asset('assets/images/Fill 1.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 60, 0, 0),
                        child: Column(
                          children: const [
                            Text(
                              'Naam bewijsstuk',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            Text(
                              'Omschrijving bewijsstuk',
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 58, 10, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return const Naam2Screen();
                            }));
                          },
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 21,
                            color: Color(0xFF02aa77),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 290, 0, 0),
                    child: Row(
                      children: [
                        const Text('Scan QR-Code om te beginnen'),
                        const SizedBox(
                          width: 35,
                        ),
                        Container(
                          decoration: (BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF02aa77), width: 2),
                            borderRadius: BorderRadius.circular(100),
                          )),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: 61,
                              width: 61,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xFF1cdca2),
                                        Color(0xFF02aa77),
                                      ])),
                              child: const Icon(
                                Icons.qr_code_2_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
