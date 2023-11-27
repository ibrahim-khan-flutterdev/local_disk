import 'package:badges/badges.dart';
import 'package:diregion/Reviewnews/edit_review.dart';
import 'package:diregion/Reviewnews/preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reject_account/approve/approve_button.dart';
import '../sendfeedback/feedback.dart';
import 'articleButton.dart';

class ReviewButton extends StatefulWidget {
  const ReviewButton({Key? key}) : super(key: key);

  @override
  State<ReviewButton> createState() => _ReviewButton();
}

class _ReviewButton extends State<ReviewButton> {
  TextEditingController searchController = TextEditingController();
  bool isObsecure = false;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
              Container(
                height: height * 0.05,
                width: width * 1,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F7F7),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(children: [
                      Text('Review',
                          style: TextStyle(
                            color: Color(0xFF808080),
                          )),
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
                      Text('News',
                          style: TextStyle(
                            color: Color(0xFF808080),
                          )),
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
                      Text('Kleine Forscher...',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ]),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 25),
                    child: Text(
                      'Review',
                      style: TextStyle(
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170, top: 30),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isObsecure = !isObsecure;
                          {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return PreView();
                            }));
                          }
                        });
                      },
                      child: Icon(isObsecure
                          ? Icons.remove_red_eye
                          : Icons.visibility_outlined),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      'Preview',
                      style: TextStyle(color: Color(0xFF000000)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 35),
                child: Row(
                  children: [
                    Text(
                      'Headline',
                      style: TextStyle(color: Color(0xFF000000)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: SizedBox(
                        height: 15,
                        child: Image.asset('assets/images/edit.png'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (contex) {
                            return EditReview();
                          }));
                        },
                        child: Text(
                          'Edit',
                          style: TextStyle(color: Color(0xFF808080)),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: height * 0.2,
                  width: width * 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF2F2F2),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                          'Kleine Forscher im Kindergarten „Struwwelpeter„',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000),
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Author and Date',
                    style: TextStyle(color: Color(0xFF000000)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  height: height * 0.12,
                  width: width * 1,
                  color: Color(0xFFF2F2F2),
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.09,
                        width: width * 0.19,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35, left: 10),
                            child: Text(
                              'Kindertagesstätte "Struwwelpeter"',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF000000)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              '14. Juli 2022',
                              style: TextStyle(color: Color(0xFF000000)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Content',
                      style: TextStyle(color: Color(0xFF000000)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 210),
                      child: SizedBox(
                          height: 15,
                          child: Image.asset('assets/images/edit.png')),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Edit',
                          style: TextStyle(color: Color(0xFF808080)),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Container(
                  height: height * 0.5,
                  width: width * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF2F2F2)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7, right: 7, top: 10),
                    child: Text(
                      '„Geheimnisvolles Erdreich - die Welt unter unseren Füßen“ – unter diesem '
                      'Motto forschten, mikroskopierten, experimentierten und buddelten die 15'
                      ' Vorschulkinder der Kindertagesstätte „Struwwelpeter“ in Ramstein am Dienstag,'
                      ' 28. Juni. Sie untersuchten alles, was im Erdreich '
                      'so vor sich geht. In einer Regenwurm-Farm konnten die Kinder beobachten, wie '
                      'diese kleinen Würmer die Erde gut durchmischen und im Ameisenhotel wurde sichtbar, '
                      'wie schnell die Ameisen neue Erdgänge bauen können. Fragen wie: „Kann man mit Erde malen? '
                      'Welche Farben haben die tausenden kleinen Steinchen im Sand?“ Diese Fragen konnten die '
                      "   Kinder nach zweieinhalb Stunden intensivem tätig sein natürlich beantworten. Aber das Highlight"
                      '  des Tages war, dass sie in den Beruf eines Paläontologen schlüpfen konnten und im Sandkasten '
                      'Dinosaurierknochen ausgruben! Abgerundet wurde dieser tolle Tag, als jedes der Kinder sein Forscherdiplom'
                      'erhielt! In diesem Sinne: immer schön neugierig bleiben...',
                      style: TextStyle(color: Color(0xFF000000)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Content',
                      style: TextStyle(color: Color(0xFF000000)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 210),
                      child: SizedBox(
                          height: 15,
                          child: Image.asset('assets/images/edit.png')),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Edit',
                          style: TextStyle(color: Color(0xFF808080)),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'Grundschule',
                      hintStyle: TextStyle(color: Color(0xFF000000)),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Color(0xFF808080),
                          ),
                        )),
                    SizedBox(
                      width: 70,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FeedBack();
                          }));
                        },
                        child: Text(
                          'Send feedback',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold),
                        )),
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
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFF002E48),
                        ),
                        child: Center(
                          child: Text(
                            'Approve',
                            style: TextStyle(color: Color(0xFFFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Color(0xFF808080),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return RejectArticle();
                      }));
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Reject article',
                        style: TextStyle(color: Color(0xFF808080)),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
