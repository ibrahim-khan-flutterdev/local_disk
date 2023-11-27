import 'package:diregion/screens/forgot_screen.dart';
import 'package:diregion/screens/onboarding1_screen.dart';
import 'package:diregion/screens/register_screen.dart';
import 'package:flutter/material.dart';

class Login1Screen extends StatefulWidget {
  const Login1Screen({Key? key}) : super(key: key);

  @override
  State<Login1Screen> createState() => _Login1Screen();
}

class _Login1Screen extends State<Login1Screen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            height: height * 0.99803,
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
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 70, 0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        ' Welcome to Diregion',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'login',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 34, 0, 0),
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
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: passwordController,
                      obscureText: isObsecure,
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
                        if (value!.length <= 8) {
                          return 'password is less then 8 digits';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 28, 0, 0),
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const ForgotScreen();
                                }));
                              },
                              child: const Text(
                                'Forgot password',
                                style: TextStyle(color: Color(0xFF808080)),
                              ))),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(104, 30, 0, 0),
                        child: InkWell(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return Onboarding1Screen();
                              }));
                            }
                          },
                          child: Container(
                            height: height * 0.060,
                            width: width * 0.30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: const Color(0xFF002E48)),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(34, 15, 0, 0),
                              child: Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Divider(
                    thickness: 1,
                    endIndent: 20,
                    indent: 20,
                    color: Colors.grey,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const RegisterScreen();
                        }));
                      },
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Register',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
