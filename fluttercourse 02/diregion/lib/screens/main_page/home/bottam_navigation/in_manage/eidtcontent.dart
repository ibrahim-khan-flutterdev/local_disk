import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class EditContent extends StatefulWidget {
  const EditContent({Key? key}) : super(key: key);

  @override
  State<EditContent> createState() => _EditContent();
}

class _EditContent extends State<EditContent> {
  TextEditingController searchController = TextEditingController();
  TextEditingController textController = TextEditingController();
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
                          'Manage',
                          style: TextStyle(
                              color: Color(0xFF000000).withOpacity(0.4)),
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
                          'News',
                          style: TextStyle(
                              color: Color(0xFF000000).withOpacity(0.4)),
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
                          'Edit News',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Text(
                          'Search category',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF808080)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(150, 10, 0, 0),
                    child: SizedBox(
                      height: 15,
                      child: Image.asset(
                        'assets/images/save.png',
                        color: Color(0xFF000000).withOpacity(0.4),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Color(0xFF000000).withOpacity(0.4)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF808080),
                      ),
                      fillColor: Color(0xFFF2F2F2),
                      hintText: 'Grundschule',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Text(
                          'Headline',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF808080)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(200, 10, 0, 0),
                    child: SizedBox(
                      height: 15,
                      child: Image.asset(
                        'assets/images/save.png',
                        color: Color(0xFF000000).withOpacity(0.4),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Color(0xFF000000).withOpacity(0.4)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: height * 0.2,
                  width: width * 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFFE5E5E5), width: 2)),
                  child: TextFormField(
                    controller: textController,
                    expands: true,
                    maxLines: null,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: (''),
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 85)),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Container(
                      height: height * 0.043,
                      width: width * 0.086,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFFE6E6E6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(9, 23, 15, 0),
                    child: Text(
                      'Kindertagesstätte "Struwwelpeter"',
                      style: TextStyle(fontSize: 13, color: Color(0xFF808080)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Text(
                          'Content',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF808080)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(200, 10, 0, 0),
                    child: SizedBox(
                      height: 15,
                      child: Image.asset(
                        'assets/images/save.png',
                        color: Color(0xFF000000).withOpacity(0.4),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Color(0xFF000000).withOpacity(0.4)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: height * 0.6,
                  width: width * 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFFE5E5E5), width: 2)),
                  child: TextFormField(
                    controller: textController,
                    expands: true,
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: (''),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Color(0xFF000000)),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                        onPressed: () {
                          showDialog(
                              context: (context),
                              builder: (BuildConext) {
                                return AlertDialog(
                                  actions: [
                                    InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Icon(
                                          Icons.highlight_off,
                                          color: Color(0xFF666666)
                                              .withOpacity(0.4),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 15, 15, 0),
                                      child: Center(
                                        child: Text(
                                          'Are you sure?',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 15, 15, 0),
                                      child: Text(
                                        'You are archiving news article - Kleine Forscher im Kindergarten „Struwwelpeter„',
                                        style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 15, 15, 0),
                                      child: Text(
                                        'You can still manage this post, however, it will not show up on the public feed.',
                                        style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 15),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 10, 0, 0),
                                          child: TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    color: Color(0xFF000000)),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 10, 0, 0),
                                          child: TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Container(
                                                height: height * 0.04,
                                                width: width * 0.35,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Color(0xFF002E48)),
                                                child: Center(
                                                  child: Text(
                                                    'Confirm archiving',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFFFFFFFF)),
                                                  ),
                                                ),
                                              )),
                                        )
                                      ],
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            'Archive',
                            style: TextStyle(color: Color(0xFF000000)),
                          ),
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: height * 0.05,
                        width: width * 0.37,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF002E48)),
                        child: Center(
                          child: Text(
                            'Save changes',
                            style: TextStyle(color: Color(0xFFFFFFFF)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Color(0xFFE6E6E6),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextButton(
                      onPressed: () {
                        showDialog(
                            context: (context),
                            builder: (BuildConext) {
                              return AlertDialog(
                                actions: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Icon(
                                        Icons.highlight_off,
                                        color:
                                            Color(0xFF666666).withOpacity(0.4),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 15, 15, 0),
                                    child: Center(
                                      child: Text(
                                        'Are you sure?',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 15, 15, 0),
                                    child: Text(
                                      'You are deleting news article - Kleine Forscher im Kindergarten „Struwwelpeter„',
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 15, 15, 0),
                                    child: Text(
                                      'You will lose access to this article and it will be removed'
                                      ' everywhere across the Diregion platform',
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 15, 0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          ' You cannot undo this action. ',
                                          style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 15),
                                        ),
                                      )),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 0, 0),
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              'Cancel',
                                              style: TextStyle(
                                                  color: Color(0xFF000000)),
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            30, 10, 0, 0),
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Container(
                                              height: height * 0.04,
                                              width: width * 0.35,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Color(0xFF002E48)),
                                              child: Center(
                                                child: Text(
                                                  'Confirm deletion',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFFFFFFFF)),
                                                ),
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                ],
                              );
                            });
                      },
                      child: Text(
                        'Delete article',
                        style: TextStyle(color: Color(0xFF808080)),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
