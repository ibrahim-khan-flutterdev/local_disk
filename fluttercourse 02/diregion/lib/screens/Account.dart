import 'package:badges/badges.dart';
import 'package:diregion/account_page/change_password.dart';
import 'package:diregion/account_page/edit_account.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Roberto Maddaloni',
                          style: TextStyle(
                              color: Color(0xFF000000).withOpacity(0.6)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(110, 15, 0, 0),
                    child: Container(
                      height: height * 0.10,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFFE6E6E6)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 35, 0, 0),
                child: Row(
                  children: [
                    Text(
                      'Profile Details',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: SizedBox(
                          height: 15,
                          child: Image.asset('assets/images/edit.png')),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return AccountEdit();
                          }));
                        },
                        child: Text(
                          'Edit',
                          style: TextStyle(
                              color: Color(0xFF000000).withOpacity(0.4)),
                        ))
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: Text(
                    'Name ',
                    style: TextStyle(color: Color(0xFF808080)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    ' Email',
                    style: TextStyle(color: Color(0xFF808080)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
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
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 15, 0),
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
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 15, 15, 0),
                                    child: Text(
                                      'Warning: you will lose access to this account and your account records will be permanently deleted.',
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 15, 15, 0),
                                    child: Text(
                                      ' However, the posts you submitted to Diregion will still be online. If you wish to delete all your posts, you can do it'
                                      ' manually before you delete your account or you can contact us to do it for you. ',
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 15),
                                    ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
