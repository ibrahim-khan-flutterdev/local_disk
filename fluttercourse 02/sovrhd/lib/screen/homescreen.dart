import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sovrhd/screen/registreren.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<String> image = [
      'assets/images/image2.png',
      'assets/images/image3.png'
    ];

    var controller = PageController();
    return Scaffold(
      backgroundColor: const Color(0xFF02AA77),
      body: Stack(children: [
        Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            color: Color(0xFF02AA77),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Column(
            children: [
              Container(
                height: height * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: controller,
                        scrollDirection: Axis.horizontal,
                        itemCount: image.length,
                        onPageChanged: (i) {
                          print("Current index = $i");
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return SingleChildScrollView(
                            child: Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(35, 40, 35, 0),
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(
                                      image[index],
                                    )),
                              ),
                              //paste here
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Lorem Ipsum',
                                style: TextStyle(fontSize: 20),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                                child: Text(
                                    'Lorem Ipsum dolor sit amit. consecteture adip isc ind elet.set du eius mod'
                                    ' tempor incidid unt ut laboret dolore mang aliqua '),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              // Row(
                              //   children: [
                              //     Padding(
                              //       padding: const EdgeInsets.fromLTRB(
                              //           160, 10, 30, 0),
                              //       child: Container(
                              //         height: 10,
                              //         width: 20,
                              //         decoration: BoxDecoration(
                              //             borderRadius:
                              //                 BorderRadius.circular(30),
                              //             color: const Color(0xFF02AA77)),
                              //       ),
                              //     ),
                              //     Padding(
                              //       padding: const EdgeInsets.fromLTRB(
                              //           0, 10, 100, 0),
                              //       child: Container(
                              //         height: 10,
                              //         width: 10,
                              //         decoration: BoxDecoration(
                              //             borderRadius:
                              //                 BorderRadius.circular(50),
                              //             color: const Color(0xFFDEDEDE)),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ]),
                          );
                        },
                      ),
                    ),
                    SmoothPageIndicator(
                        controller: controller,
                        count: 2,
                        effect: WormEffect(
                          dotHeight: 16,
                          dotWidth: 16,
                          type: WormType.normal,
                          activeDotColor: Colors.green,
                          // strokeWidth: 5,
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 64, 0, 0),
                      child: InkWell(
                          onTap: () {
                            if (controller.page == 0) {
                              controller.animateToPage(1,
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.bounceIn);
                            } else {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return const RegistrerenScreen();
                              }));
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFF02AA77), width: 2),
                                borderRadius: BorderRadius.circular(100)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xFF37D2A3),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFF1CDCA2),
                                      Color(0xFF02AA77),
                                    ],
                                    // stops: [
                                    //   0.3,
                                    //   0.7,
                                    // ]
                                  ),
                                ),
                                child: Image.asset('assets/images/image4.png'),
                              ),
                            ),
                          )),
                    ),
                    //paste here
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 64,
          left: 100,
          right: 100,
          child: SizedBox(
            height: height * 0.1,
            child: Image.asset(
              'assets/Logo/logo1.png',
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
