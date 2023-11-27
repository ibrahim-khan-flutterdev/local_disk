import 'package:flutter/material.dart';
import 'package:sovrhd/screen/drawer_screen.dart';
import 'package:sovrhd/screen/otvang2screen.dart';

class Naam3Screen extends StatelessWidget {
  Naam3Screen({Key? key}) : super(key: key);
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
              top: 90,
              left: 15,
              child: Container(
                height: height * 0.055,
                width: width * 0.099,
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
            top: 90,
            left: 130,
            right: 115,
            child: Image.asset(
              'assets/Logo/logo1.png',
              color: Colors.white,
            ),
          ),
          Positioned(
              top: 150,
              child: Container(
                height: height * 0.84,
                width: width * 0.9980,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                      child: Container(
                        height: height * 0.05010,
                        width: width * 0.80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFf2f2f2)),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Icon(
                                Icons.search,
                                color: Color(0xFF6e6d7a),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(
                                'Zoeken',
                                style: TextStyle(
                                    color: Color(0xFF2f2e41)
                                        .withOpacity(0.6800000071525574)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(children: [
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
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext) {
                              return const Otvang2screen();
                            }));
                          },
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 21,
                            color: Color(0xFF02aa77),
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(41, 35, 0, 0),
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
                          padding: const EdgeInsets.fromLTRB(18, 35, 0, 0),
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
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 35, 10, 0),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 21,
                            color: Color(0xFF02aa77),
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(41, 35, 0, 0),
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
                          padding: const EdgeInsets.fromLTRB(18, 35, 0, 0),
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
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 35, 10, 0),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 21,
                            color: Color(0xFF02aa77),
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(41, 35, 0, 0),
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
                          padding: const EdgeInsets.fromLTRB(18, 35, 0, 0),
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
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 35, 10, 0),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 21,
                            color: Color(0xFF02aa77),
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(41, 35, 0, 0),
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
                          padding: const EdgeInsets.fromLTRB(18, 35, 0, 0),
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
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 35, 10, 0),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 21,
                            color: Color(0xFF02aa77),
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(41, 35, 0, 0),
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
                          padding: const EdgeInsets.fromLTRB(18, 35, 0, 0),
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
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 35, 10, 0),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 21,
                            color: Color(0xFF02aa77),
                          ),
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(43, 20, 0, 0),
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
              ))
        ]));
  }
}
