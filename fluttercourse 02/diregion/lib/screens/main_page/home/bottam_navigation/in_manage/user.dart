import 'package:diregion/screens/main_page/home/bottam_navigation/in_manage/manage_edit.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ListView(children: [
      Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Container(
                  height: height * 0.09,
                  width: width * 0.19,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFD9D9D9)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      'Ralf Hechler ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: Text(
                      ' CCR Ramstein',
                      style: TextStyle(fontSize: 11, color: Color(0xFF808080)),
                    ),
                  ),
                ],
              ),
              PopupMenuButton(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 15, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.more_horiz,
                          color: Color(0xFF808080),
                        ),
                        Text(
                          'Manage',
                          style: TextStyle(color: Color(0xFF808080)),
                        ),
                      ],
                    ),
                  ),
                  itemBuilder: (context) => <PopupMenuEntry>[
                        PopupMenuItem(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return ManageEdit();
                                    }));
                                  },
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(color: Color(0xFF000000)),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: Image.asset('assets/images/edit.png'),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 2,
                              color: Color(0xFF000000).withOpacity(0.1),
                              indent: 10,
                              endIndent: 20,
                            ),
                          ],
                        )),
                        PopupMenuItem(
                            child: Column(
                          children: [
                            Row(
                              children: [
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
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        15, 15, 15, 0),
                                                child: Center(
                                                  child: Text(
                                                    'Are you sure?',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 19),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        15, 15, 15, 0),
                                                child: Text(
                                                  'You are deleting Ralf Hechler’s account.',
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        15, 15, 15, 0),
                                                child: Text(
                                                  'Ralf Hechler will lose access to his account'
                                                  ' and his account records will be permanently deleted.',
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        15, 15, 15, 0),
                                                child: Text(
                                                  'However, the posts he submitted to Diregion will still be online. '
                                                  'If you wish to delete all posts authored'
                                                  ' by Ralf Hechler, please do it manually. You cannot undo this action.',
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 15, 15, 0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      ' You cannot undo this action. ',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontSize: 15),
                                                    ),
                                                  )),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(20, 10, 0, 0),
                                                    child: TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Text(
                                                          'Cancel',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFF000000)),
                                                        )),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(30, 10, 0, 0),
                                                    child: TextButton(
                                                        onPressed: () {},
                                                        child: Container(
                                                          height: height * 0.04,
                                                          width: width * 0.35,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              color: Color(
                                                                  0xFF002E48)),
                                                          child: Center(
                                                            child: Text(
                                                              'Delete Account',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  color: Color(
                                                                      0xFFFFFFFF)),
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
                                    'Delete',
                                    style: TextStyle(color: Color(0xFF000000)),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child:
                                      Image.asset('assets/images/delete.png'),
                                ),
                              ],
                            ),
                          ],
                        )),
                      ]),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Container(
                  height: height * 0.09,
                  width: width * 0.19,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFD9D9D9)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      'Uli Zimmer',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: Text(
                      ' Ortsgemeinde Niedermohr',
                      style: TextStyle(fontSize: 11, color: Color(0xFF808080)),
                    ),
                  ),
                ],
              ),
              PopupMenuButton(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 15, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.more_horiz,
                          color: Color(0xFF808080),
                        ),
                        Text(
                          'Manage',
                          style: TextStyle(color: Color(0xFF808080)),
                        ),
                      ],
                    ),
                  ),
                  itemBuilder: (context) => <PopupMenuEntry>[
                        PopupMenuItem(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return ManageEdit();
                                    }));
                                  },
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(color: Color(0xFF000000)),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: Image.asset('assets/images/edit.png'),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 2,
                              color: Color(0xFF000000).withOpacity(0.1),
                              indent: 10,
                              endIndent: 20,
                            ),
                          ],
                        )),
                        PopupMenuItem(
                            child: Column(
                          children: [
                            Row(
                              children: [
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
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        15, 15, 15, 0),
                                                child: Center(
                                                  child: Text(
                                                    'Are you sure?',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 19),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        15, 15, 15, 0),
                                                child: Text(
                                                  'You are deleting Ralf Hechler’s account.',
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        15, 15, 15, 0),
                                                child: Text(
                                                  'Ralf Hechler will lose access to his account'
                                                  ' and his account records will be permanently deleted.',
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        15, 15, 15, 0),
                                                child: Text(
                                                  'However, the posts he submitted to Diregion will still be online. '
                                                  'If you wish to delete all posts authored'
                                                  ' by Ralf Hechler, please do it manually. You cannot undo this action.',
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 15, 15, 0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      ' You cannot undo this action. ',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontSize: 15),
                                                    ),
                                                  )),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(20, 10, 0, 0),
                                                    child: TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Text(
                                                          'Cancel',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFF000000)),
                                                        )),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(30, 10, 0, 0),
                                                    child: TextButton(
                                                        onPressed: () {},
                                                        child: Container(
                                                          height: height * 0.04,
                                                          width: width * 0.35,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              color: Color(
                                                                  0xFF002E48)),
                                                          child: Center(
                                                            child: Text(
                                                              'Delete Account',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  color: Color(
                                                                      0xFFFFFFFF)),
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
                                    'Delete',
                                    style: TextStyle(color: Color(0xFF000000)),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child:
                                      Image.asset('assets/images/delete.png'),
                                ),
                              ],
                            ),
                          ],
                        )),
                      ]),
            ],
          ),
        ],
      )
    ]);
  }
}
