import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Published extends StatelessWidget {
  const Published({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ListView(children: [
      Column(
        children: [
          PopupMenuButton(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(270, 15, 0, 0),
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
                            showDialog(
                                context: (context),
                                builder: (BuildContext) {
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
                                            15, 10, 20, 0),
                                        child: Text(
                                          'Your account is still under review.',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 0),
                                        child: Text(
                                          'You can still create posts under VG-Ramstein Miesenbach, but these can be only published on the platform when we can verify that you are an '
                                          'official representative.',
                                          style: TextStyle(
                                              color: Color(0xFF000000)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 0),
                                        child: Text(
                                          ' Feel free to create news articles with Diregion. We will email you once your account is eligible to publish on our platform.',
                                          style: TextStyle(
                                              color: Color(0xFF000000)),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Text('Edit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF000000))))
                      // Icon(Icons.edit)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 170, 0),
                    child: Container(
                      height: 2,
                      width: 80,
                      color: Color(0xFF1F1E1E).withOpacity(0.4),
                    ),
                  )
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
                                builder: (BuildContext) {
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
                                            15, 10, 20, 0),
                                        child: Center(
                                          child: Text(
                                            'Are you sure?',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 10, 20, 0),
                                        child: Text(
                                          'You are archiving news article - Kleine Forscher im Kindergarten „Struwwelpeter„',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 0),
                                        child: Text(
                                          'You can still manage this post, however, it will not show up on the public feed.',
                                          style: TextStyle(
                                              color: Color(0xFF000000)),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    color: Color(0xFF000000)),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                40, 0, 0, 0),
                                            child: TextButton(
                                                onPressed: () {},
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
                                                          color: Color(
                                                              0xFFFFFFFF)),
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Text('Archive',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF000000)))),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.inventory_2_outlined,
                        size: 15,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 170, 0),
                    child: Container(
                      height: 2,
                      width: 80,
                      color: Color(0xFF000000).withOpacity(0.4),
                    ),
                  )
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
                                builder: (BuildContext) {
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
                                            15, 10, 20, 0),
                                        child: Center(
                                          child: Text(
                                            'Are you sure?',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 10, 20, 0),
                                        child: Text(
                                          'You are deleting news article - Kleine Forscher im Kindergarten „Struwwelpeter„',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 0),
                                        child: Text(
                                          'You will lose access to this article and it will be removed everywhere across the Diregion platform.'
                                          'You cannot undo this action.',
                                          style: TextStyle(
                                              color: Color(0xFF000000)),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    color: Color(0xFF000000)),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                40, 0, 0, 0),
                                            child: TextButton(
                                                onPressed: () {},
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
                                                          color: Color(
                                                              0xFFFFFFFF)),
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Text('Delete',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF000000)))),
                      SizedBox(
                        width: 4,
                      ),
                      SizedBox(
                          height: 15,
                          child: Image.asset('assets/images/delete.png'))
                    ],
                  ),
                ],
              )),
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
          PopupMenuButton(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(270, 15, 0, 0),
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
                            showDialog(
                                context: (context),
                                builder: (BuildContext) {
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
                                            15, 10, 20, 0),
                                        child: Text(
                                          'Your account is still under review.',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 0),
                                        child: Text(
                                          'You can still create posts under VG-Ramstein Miesenbach, but these can be only published on the platform when we can verify that you are an '
                                          'official representative.',
                                          style: TextStyle(
                                              color: Color(0xFF000000)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 0),
                                        child: Text(
                                          ' Feel free to create news articles with Diregion. We will email you once your account is eligible to publish on our platform.',
                                          style: TextStyle(
                                              color: Color(0xFF000000)),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Text('Edit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF000000))))
                      // Icon(Icons.edit)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 170, 0),
                    child: Container(
                      height: 2,
                      width: 80,
                      color: Color(0xFF000000).withOpacity(0.4),
                    ),
                  )
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
                                builder: (BuildContext) {
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
                                            15, 10, 20, 0),
                                        child: Center(
                                          child: Text(
                                            'Are you sure?',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 10, 20, 0),
                                        child: Text(
                                          'You are archiving news article - Kleine Forscher im Kindergarten „Struwwelpeter„',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 0),
                                        child: Text(
                                          'You can still manage this post, however, it will not show up on the public feed.',
                                          style: TextStyle(
                                              color: Color(0xFF000000)),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    color: Color(0xFF000000)),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                40, 0, 0, 0),
                                            child: TextButton(
                                                onPressed: () {},
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
                                                          color: Color(
                                                              0xFFFFFFFF)),
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Text('Archive',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF000000)))),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.inventory_2_outlined,
                        size: 15,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 170, 0),
                    child: Container(
                      height: 2,
                      width: 80,
                      color: Color(0xFF000000).withOpacity(0.4),
                    ),
                  )
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
                                builder: (BuildContext) {
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
                                            15, 10, 20, 0),
                                        child: Center(
                                          child: Text(
                                            'Are you sure?',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 10, 20, 0),
                                        child: Text(
                                          'You are deleting news article - Kleine Forscher im Kindergarten „Struwwelpeter„',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 0),
                                        child: Text(
                                          'You will lose access to this article and it will be removed everywhere across the Diregion platform.'
                                          'You cannot undo this action.',
                                          style: TextStyle(
                                              color: Color(0xFF000000)),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    color: Color(0xFF000000)),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                40, 0, 0, 0),
                                            child: TextButton(
                                                onPressed: () {},
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
                                                      'Confirm deletion',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFFFFFFF)),
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Text('Delete',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF000000)))),
                      SizedBox(
                        width: 4,
                      ),
                      SizedBox(
                          height: 15,
                          child: Image.asset('assets/images/delete.png'))
                    ],
                  ),
                ],
              )),
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
                      'Kooperation zwischen Zahnarztpraxis ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: Text(
                      ' Wagner und Kita Kinderplanet',
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
        ],
      )
    ]);
  }
}
