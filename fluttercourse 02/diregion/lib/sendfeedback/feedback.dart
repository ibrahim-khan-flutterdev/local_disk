import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBack();
}

class _FeedBack extends State<FeedBack> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                  child: Text('diregion',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xFF002E48))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 5, 0, 0),
                  child: Badge(
                    padding: const EdgeInsets.all(3),
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
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Container(
                    height: height * 0.025,
                    width: width * 0.052,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFFE6E6E6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 5, 0, 0),
                  child: Text(
                    'Roberto',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                  child: Container(
                    height: height * 0.030,
                    width: width * 0.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF2EBBF2)),
                    child: Center(
                        child: Text(
                      'ADMIN',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 35, 10, 0),
              child: Container(
                height: height * 0.05,
                width: width * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFF7F7F7)),
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        'Review',
                        style: TextStyle(color: Color(0xFF808080)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Accounts',
                        style: TextStyle(color: Color(0xFF808080)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Ralf Hechler',
                        style: TextStyle(color: Color(0xFF808080)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 10,
                      ),
                      Text(
                        'Suggest',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Send feedback',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Article',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Kleine Forscher im Kindergarten „Struwwelpeter„',
                  style: TextStyle(fontSize: 15, color: Color(0xFF000000)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Account',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Row(
                children: [
                  Container(
                    height: height * 0.04,
                    width: width * 0.08,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFFF2F2F2)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Ralf Hechler',
                    style: TextStyle(color: Color(0xFF000000)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Feedback',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Container(
                height: height * 0.30,
                width: width * 0.93,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF2F2F2)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Color(0xFF000000)),
                      )),
                  SizedBox(
                    width: 180,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: height * 0.04,
                        width: width * 0.23,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFF002E48)),
                        child: Center(
                          child: Text(
                            'Send',
                            style: TextStyle(color: Color(0xFFFFFFFF)),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
