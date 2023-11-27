import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePassword();
}

class _ChangePassword extends State<ChangePassword> {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  int counter = 0;
  var formKey = GlobalKey<FormState>();
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
                    child: Row(
                      children: [
                        Text(
                          'Personal',
                          style: TextStyle(color: Color(0xFF808080)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xFF000000),
                          size: 10,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Login details',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 35, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Change Password',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 40, 0, 0),
                  child: Text(
                    'Old password ',
                    style: TextStyle(color: Color(0xFF000000)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: TextFormField(
                  controller: oldPasswordController,
                  decoration:
                      InputDecoration(filled: true, border: InputBorder.none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'New password',
                    style: TextStyle(color: Color(0xFF000000)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: TextFormField(
                  controller: newPasswordController,
                  decoration: InputDecoration(
                    filled: true,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Confirm new password',
                    style: TextStyle(color: Color(0xFF000000)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: TextFormField(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      filled: true,
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (newPasswordController.text !=
                          confirmPasswordController.text) {
                        return "Password does not match";
                      }
                      return null;
                    }),
              ),
              SizedBox(
                height: height * 0.05,
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
                    padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
                    child: TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        child: Container(
                          height: height * 0.04,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF002E48)),
                          child: Center(
                            child: Text(
                              'Change password',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFFFFFFFF)),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
