import 'package:diregion/screens/main_page/home/bottam_navigation/news/News_edit.dart';
import 'package:flutter/material.dart';

class News1 extends StatelessWidget {
  const News1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          PopupMenuButton(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 18, 0),
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
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return NewsEdit();
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
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 15, 15, 0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'You can still manage this post, however, '
                                                  'it will not show up on the public feed.',
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15),
                                                ),
                                              )),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 10, 0, 0),
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
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        30, 10, 0, 0),
                                                child: TextButton(
                                                    onPressed: () {},
                                                    child: Container(
                                                      height: height * 0.04,
                                                      width: width * 0.35,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Color(
                                                              0xFF002E48)),
                                                      child: Center(
                                                        child: Text(
                                                          'Confirm archiving',
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
                                'Archive',
                                style: TextStyle(color: Color(0xFF000000)),
                              ),
                            ),
                            Icon(Icons.inventory_2_outlined)
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
                                              'You are deleting Ralf Hechler’s account.',
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
                                              'Ralf Hechler will lose access to his account'
                                              ' and his account records will be permanently deleted.',
                                              style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 15),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
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
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 10, 0, 0),
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
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        30, 10, 0, 0),
                                                child: TextButton(
                                                    onPressed: () {},
                                                    child: Container(
                                                      height: height * 0.04,
                                                      width: width * 0.35,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
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
                              child: Image.asset('assets/images/delete.png'),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  'Kleine Forscher im Kindergarten ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: Text(
                  ' „Struwwelpeter„',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 10, 0, 0),
            child: Container(
              height: height * 0.10,
              width: width * 0.20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFD9D9D9)),
            ),
          ),
        ],
      ),
      Divider(
        height: 50,
        thickness: 2,
        indent: 10,
        endIndent: 15,
        color: Color(0xFF000000).withOpacity(0.2),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          PopupMenuButton(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 18, 0),
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
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return NewsEdit();
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
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 15, 15, 0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'You can still manage this post, however, '
                                                  'it will not show up on the public feed.',
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15),
                                                ),
                                              )),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 10, 0, 0),
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
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        30, 10, 0, 0),
                                                child: TextButton(
                                                    onPressed: () {},
                                                    child: Container(
                                                      height: height * 0.04,
                                                      width: width * 0.35,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Color(
                                                              0xFF002E48)),
                                                      child: Center(
                                                        child: Text(
                                                          'Confirm archiving',
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
                                'Archive',
                                style: TextStyle(color: Color(0xFF000000)),
                              ),
                            ),
                            Icon(Icons.inventory_2_outlined)
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
                                              'You are deleting Ralf Hechler’s account.',
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
                                              'Ralf Hechler will lose access to his account'
                                              ' and his account records will be permanently deleted.',
                                              style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 15),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
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
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 10, 0, 0),
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
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        30, 10, 0, 0),
                                                child: TextButton(
                                                    onPressed: () {},
                                                    child: Container(
                                                      height: height * 0.04,
                                                      width: width * 0.35,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
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
                              child: Image.asset('assets/images/delete.png'),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  'Kooperation zwischen Zahnarztpraxis',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  'Wagner und Kita Kinderplanet',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
            child: Container(
              height: height * 0.10,
              width: width * 0.20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFD9D9D9)),
            ),
          ),
        ],
      ),
      Divider(
        height: 50,
        thickness: 2,
        indent: 10,
        endIndent: 15,
        color: Color(0xFF000000).withOpacity(0.2),
      ),
    ]);
  }
}
