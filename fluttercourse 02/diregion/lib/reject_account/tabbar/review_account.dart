import 'package:badges/badges.dart';
import 'package:diregion/reject_account/rejectaccount.dart';
import 'package:diregion/sendfeedback/send_feedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'approve/approve.dart';

class ReviewAccount extends StatefulWidget {
  const ReviewAccount({Key? key}) : super(key: key);

  @override
  State<ReviewAccount> createState() => _ReviewAccount();
}

class _ReviewAccount extends State<ReviewAccount> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController organizationController = TextEditingController();
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
              padding: const EdgeInsets.only(left: 15, top: 80),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Review Inbox',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
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
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: Row(
                children: [
                  Text(
                    'Review Account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: width * 0.4,
                  ),
                  SizedBox(
                      height: 10,
                      child: Image.asset(
                        'assets/images/save.png',
                        color: Color(0xFF000000).withOpacity(0.4),
                      )),
                  Text(
                    'Save',
                    style: TextStyle(color: Color(0xFF000000).withOpacity(0.4)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Name',
                  style: TextStyle(
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: TextFormField(
                  controller: nameController,
                  decoration:
                      InputDecoration(filled: true, border: InputBorder.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: TextFormField(
                  controller: emailController,
                  decoration:
                      InputDecoration(filled: true, border: InputBorder.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Organization',
                  style: TextStyle(
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: TextFormField(
                  controller: organizationController,
                  decoration:
                      InputDecoration(filled: true, border: InputBorder.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Color(0xFF808080)),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 70,
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return SendFeedBack();
                          }));
                        },
                        child: Text(
                          'Send feedback',
                          style: TextStyle(color: Color(0xFF808080)),
                        )),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Approve();
                        }));
                      },
                      child: Container(
                        height: height * 0.04,
                        width: width * 0.27,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF002E48)),
                        child: Center(
                          child: Text('Approve',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              )),
                        ),
                      ))
                ],
              ),
            ),
            Divider(
              thickness: 2,
              indent: 15,
              endIndent: 15,
              color: Color(0xFF808080).withOpacity(0.4),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return RejectAccount();
                  }));
                },
                child: Text(
                  'Reject Account',
                  style: TextStyle(color: Color(0xFF808080)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
