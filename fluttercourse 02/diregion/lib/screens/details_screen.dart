import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreen();
}

class _DetailsScreen extends State<DetailsScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  bool isChecked = false;
  var formKey = GlobalKey<FormState>();
  bool isObsecure = false;

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
                        'Complete your',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'registration',
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
                          'E-mail',
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
                        controller: emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.20),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter E-mail.';
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return 'E-mail invalid.please use a valid email format.';
                          } else {
                            return null;
                          }
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Row(
                      children: const [
                        Text(
                          'Password',
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
                    child: TextFormField(
                      obscureText: isObsecure,
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isObsecure = !isObsecure;
                              });
                            },
                            child: Icon(isObsecure
                                ? Icons.remove_red_eye
                                : Icons.visibility_outlined)),
                        helperText: 'Minimum of 8 characters',
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.20),
                      ),
                      validator: (value) {
                        if (value!.length <= 8) {
                          return 'password is less then 8 digits';
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
                          ' Confirm Password',
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
                    child: TextFormField(
                        controller: confirmController,
                        obscureText: isObsecure,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  isObsecure = !isObsecure;
                                });
                              },
                              child: Icon(isObsecure
                                  ? Icons.remove_red_eye
                                  : Icons.visibility_outlined)),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.20),
                        ),
                        validator: (value) {
                          if (passwordController.text !=
                              confirmController.text) {
                            return "Password does not match";
                          }
                          return null;
                        }),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: isChecked,
                          onChanged: (val) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          }),
                      const Text(
                        "I accept terms  and conditions.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 25, 0, 0),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(Icons.arrow_back)),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                        child: Text('Back '),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 30, 0, 0),
                        child: InkWell(
                          onTap: () {
                            if (formKey.currentState!.validate()) {}
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Container(
                              height: height * 0.050,
                              width: width * 0.30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: const Color(0xFF002E48)),
                              child: Center(
                                child: Text(
                                  'Register',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
