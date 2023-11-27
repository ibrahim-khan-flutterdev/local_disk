import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'homepage.dart';

class Onboarding1Screen extends StatefulWidget {
  const Onboarding1Screen({Key? key}) : super(key: key);

  @override
  State<Onboarding1Screen> createState() => _Onboarding1Screen();
}

class _Onboarding1Screen extends State<Onboarding1Screen> {
  int counter = 0;
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var controller = PageController();

    List<Widget> _texts = [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(31, 20, 0, 0),
            child: Text(
              'Welcome to Diregion!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(31, 0, 18, 0),
            child: Text(
                "Diregion is a news publishing platform  that locally broadcasts content faster and wider than the traditional Amtsblatt. "),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Text(
              "Posting News",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 16, 23, 0),
            child: Text(
                "Publishing to Diregion is a simple process. Tap the create button on the menu or the dashboard and fill out the necessary details."),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 16, 10, 0),
            child: Text(
                "Note that it might take 2-3 days for us to review your content before it gets published. "),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 16, 0, 0),
            child: Text(
              "Your Dashboard",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(31, 16, 10, 0),
            child: Text(
                'Here you can see your pending posts, posts that are published, and the drafts you made. You can also add news from your dashboard.'),
          )
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(31, 16, 0, 0),
            child: Text(
              "Ready to go!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(31, 16, 15, 0),
            child: Text(
                ' You can visit the homepage which shows all posts others have made, or you can create your  posts right away!'),
          )
        ],
      ),
    ];
    List<Widget> widgets = [
      Container(
        height: height * 0.43,
        width: width * 0.83,
        color: Color(0xFFF2F2F2),
      ),
      Container(
        height: height * 0.43,
        width: width * 0.83,
        color: Color(0xFFF2F2F2),
      ),
      Container(
        height: height * 0.43,
        width: width * 0.83,
        color: Color(0xFFF2F2F2),
      ),
      Container(
        height: height * 0.43,
        width: width * 0.83,
        color: Color(0xFFF2F2F2),
      ),
    ];
    return Scaffold(
      body: Container(
          color: Color(0xFFFAFAFA),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 35, 0, 0),
                    child: Text('diregion',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFF002E48))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 30, 0, 0),
                    child: Badge(
                      padding: EdgeInsets.all(3),
                      position: BadgePosition.topEnd(top: 5, end: 8),
                      animationDuration: Duration(milliseconds: 300),
                      animationType: BadgeAnimationType.slide,
                      badgeContent: Text(
                        counter.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      child: IconButton(
                        icon: SizedBox(
                            height: 15,
                            width: 15,
                            child: Image.asset('assets/images/vector.png')),
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                    child: Container(
                      height: height * 0.025,
                      width: width * 0.052,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFFE6E6E6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 35, 0, 0),
                    child: Text(
                      'Roberto',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                    child: Container(
                      height: height * 0.030,
                      width: width * 0.20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFFF4F4F)),
                      child: Center(
                          child: Text(
                        'Pending',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
              Expanded(
                child: PageView.builder(
                    controller: controller,
                    itemCount: widgets.length,
                    onPageChanged: (i) {
                      print("Current index = $i");
                      pageIndex = i;
                      setState(() {});
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: widgets[index],
                          ),
                          _texts[index],
                        ],
                      );
                    }),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: SmoothPageIndicator(
                        controller: controller,
                        count: 4,
                        effect: ScrollingDotsEffect(
                            activeStrokeWidth: 2.6,
                            activeDotScale: 1.3,
                            maxVisibleDots: 5,
                            radius: 8,
                            spacing: 5,
                            dotHeight: 8,
                            dotWidth: 8,
                            dotColor: Color(0xFFE6E6E6),
                            activeDotColor: Color(0xFF000000))),
                  ),
                  pageIndex == 3
                      ? Padding(
                          padding: const EdgeInsets.fromLTRB(170, 0, 0, 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return Home1();
                              }));
                            },
                            child: Container(
                              height: height * 0.04,
                              width: width * 0.24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xFF002E48)),
                              child: Center(
                                child: Text(
                                  'Let’s start!',
                                  style: TextStyle(color: Color(0xFFFFFFFF)),
                                ),
                              ),
                            ),
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            if (controller.page == 0) {
                              controller.animateToPage(1,
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.bounceIn);
                            }
                            if (controller.page == 1) {
                              controller.animateToPage(2,
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.bounceIn);
                            }
                            if (controller.page == 2) {
                              controller.animateToPage(3,
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.bounceIn);
                            }

                            {}
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(250, 0, 0, 10),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF000000),
                            ),
                          ),
                        )
                ],
              )
            ],
          )),
    );
  }
}
