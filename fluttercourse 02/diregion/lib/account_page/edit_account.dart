import 'package:badges/badges.dart';
import 'package:diregion/account_page/change_password.dart';
import 'package:flutter/material.dart';

class AccountEdit extends StatefulWidget {
  const AccountEdit({Key? key}) : super(key: key);

  @override
  State<AccountEdit> createState() => _AccountEdit();
}

class _AccountEdit extends State<AccountEdit> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text('diregion',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xFF002E48))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
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
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Container(
                  height: height * 0.025,
                  width: width * 0.052,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFE6E6E6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 15, 0, 0),
                child: Text(
                  'Roberto',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 0, 0),
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
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
              height: height * 0.060,
              width: width * 10,
              color: Color(0xFFF7F7F7),
              child: Center(
                child: Text(
                  'Your account is currently under review. Learn more.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Column(
                  children: [
                    Text(
                      'My Account',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Roberto Maddaloni',
                      style:
                          TextStyle(color: Color(0xFF000000).withOpacity(0.4)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 84),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE6E6E6),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          child: Container(
                            width: 100,
                            height: 30,
                            color: Color(0xFF808080),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 15,
                                  child: Image.asset(
                                    'assets/images/edit.png',
                                    color: Color(0xFFE6E6E6),
                                  ),
                                ),
                                Text(
                                  'Edit',
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xFFE6E6E6)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 35, 0, 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Profile Details',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 40, 0, 0),
              child: Text(
                'Name ',
                style: TextStyle(color: Color(0xFF000000)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: TextFormField(
              controller: nameController,
              decoration:
                  InputDecoration(filled: true, border: InputBorder.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                ' Email',
                style: TextStyle(color: Color(0xFF000000)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                filled: true,
                border: InputBorder.none,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Text(
                  'Password',
                  style: TextStyle(color: Color(0xFF808080)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 5, 0, 0),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ChangePassword();
                      }));
                    },
                    child: Text(
                      'Change Password',
                      style: TextStyle(color: Color(0xFF808080)),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Color(0xFF000000)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(140, 0, 0, 0),
                child: TextButton(
                    onPressed: () {},
                    child: Container(
                      height: height * 0.04,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF002E48)),
                      child: Center(
                        child: Text(
                          'Save changes',
                          style: TextStyle(color: Color(0xFFFFFFFF)),
                        ),
                      ),
                    )),
              )
            ],
          ),
          Divider(
            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Color(0xFFE6E6E6),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton(
                onPressed: () {
                  showDialog(
                      context: (context),
                      builder: (builder) {
                        return AlertDialog(
                          actions: [
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Icon(
                                  Icons.highlight_off,
                                  color: Color(0xFF666666).withOpacity(0.4),
                                )),
                            Center(
                              child: Text(
                                'Are you sure?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                              child: Center(
                                child: Text(
                                  'You are deleting your account.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: Text(
                                  'Warning: you will lose access to this account and your account records will be permanently deleted.',
                                  style: TextStyle(
                                      color: Color(0xFF000000), fontSize: 15),
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: Text(
                                  ' However, the posts you submitted to Diregion will still be online. If you wish to delete all your posts, you can do it'
                                  ' manually before you delete your account or you can contact us to do it for you. ',
                                  style: TextStyle(
                                      color: Color(0xFF000000), fontSize: 15),
                                ),
                              ),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 15, 15, 0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    ' You cannot undo this action. ',
                                    style: TextStyle(
                                        color: Color(0xFF000000), fontSize: 15),
                                  ),
                                )),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'Cancel',
                                        style:
                                            TextStyle(color: Color(0xFF000000)),
                                      )),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 10, 0, 0),
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
                                            'Delete Account',
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
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Delete my account',
                    style: TextStyle(color: Color(0xFF808080)),
                  ),
                )),
          ),
        ]),
      ),
    ));
  }
}
