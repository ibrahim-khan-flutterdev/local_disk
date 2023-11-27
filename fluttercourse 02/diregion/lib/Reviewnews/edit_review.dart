import 'package:badges/badges.dart';
import 'package:diregion/Reviewnews/preview.dart';
import 'package:flutter/material.dart';

class EditReview extends StatefulWidget {
  const EditReview({Key? key}) : super(key: key);

  @override
  State<EditReview> createState() => _EditReview();
}

class _EditReview extends State<EditReview> {
  TextEditingController searchController = TextEditingController();
  TextEditingController textController = TextEditingController();
  TextEditingController contentController = TextEditingController();
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
                        child: Image.asset('assets/images/save.png'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Save',
                          style: TextStyle(color: Color(0xFF808080)),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Container(
                  height: height * 0.2,
                  width: width * 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFFE5E5E5), width: 2)),
                  child: TextFormField(
                    expands: true,
                    maxLines: null,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: '',
                      hintStyle: TextStyle(color: Color(0xFF000000)),
                      border: InputBorder.none,
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
                          child: Image.asset('assets/images/save.png')),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Save',
                          style: TextStyle(color: Color(0xFF808080)),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Container(
                  height: height * 0.6,
                  width: width * 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFFE5E5E5), width: 2)),
                  child: TextFormField(
                    expands: true,
                    maxLines: null,
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: '',
                      hintStyle: TextStyle(color: Color(0xFF000000)),
                      border: InputBorder.none,
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
                          child: Image.asset('assets/images/save.png')),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Save'
                          '',
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
                        onPressed: () {},
                        child: Text(
                          'Send feedback',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold),
                        )),
                    TextButton(
                      onPressed: () {},
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
                    onPressed: () {},
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
