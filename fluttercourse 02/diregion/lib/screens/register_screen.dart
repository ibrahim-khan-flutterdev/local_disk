import 'package:diregion/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: height * 0.9339,
            width: width * 0.9999,
            decoration: const BoxDecoration(color: Colors.white),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: Text('diregion',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xFF002E48))),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(122, 25, 0, 0),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(Icons.arrow_back)),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                      child: Text('Back to Home'),
                    )
                  ]),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.9999,
                    decoration:
                        BoxDecoration(color: Colors.grey.withOpacity(0.10)),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            'personal',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                            height: height * 0.003,
                            width: width * 0.090,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                        ),
                        Text(
                          'Login details',
                          style: TextStyle(color: Colors.grey.withOpacity(0.9)),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Tell us about yourself',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
                    child: Row(
                      children: const [
                        Text(
                          'Full Name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '*',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: TextFormField(
                      controller: fullNameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'enter your full name',
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.20),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your name';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Row(
                      children: const [
                        Text(
                          'Organization you represent',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '*',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: const Icon(Icons.search),
                        hintText: 'Search organization',
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.20),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                    child: Text(
                        'Before you can post news as VG Ramstein  Miesenbach ,'
                        'we would need to review your account to prove that you '
                        'officallyrepresent this  organization'),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 30, 0),
                    child: Text(
                        'We will email you once you are approved.However,you can still use diregion'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(190, 30, 0, 0),
                    child: InkWell(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const LoginScreen();
                          }));
                        }
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0xFF002E48)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                          child: Row(
                            children: const [
                              Text(
                                'Next',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
