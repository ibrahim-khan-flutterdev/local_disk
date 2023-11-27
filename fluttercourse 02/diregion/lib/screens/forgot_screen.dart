import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreen();
}

class _ForgotScreen extends State<ForgotScreen> {
  TextEditingController emailController = TextEditingController();
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
                        ' Recover your account',
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
                        'Please enter your email address to rest your password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
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
                        keyboardType: TextInputType.text,
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 35, 0, 0),
                        child: TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext) {
                                    return AlertDialog(
                                      title: const Text('Confirm delete'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('No')),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('Yes'))
                                      ],
                                    );
                                  });
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: Colors.grey),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(115, 30, 0, 0),
                        child: InkWell(
                          onTap: () {
                            if (formKey.currentState!.validate()) {}
                          },
                          child: Container(
                            height: height * 0.050,
                            width: width * 0.40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: const Color(0xFF002E48)),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                'Reset password',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
