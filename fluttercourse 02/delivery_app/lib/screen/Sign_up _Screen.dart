
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          centerTitle: true,
          title: const Text(
            'SignUpScreen',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    'https://media.istockphoto.com/vectors/food-delivery-service-by-scooter-with-courier-hand-'
                    'holding-mobile-a-vector-id1182653921?b=1&k=20&m=1182653921&s=612x612&w=0&h=ITSZ'
                    '_QsPAy_bQfe1vBkdMMHK4hYT71dHNxN1rJz5wo4=',
                    fit: BoxFit.cover,
                    height: 680,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        height: 590,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Sing Up',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.purple),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(

                              controller: username,
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.person,
                                  size: 20,
                                  color: Colors.tealAccent,
                                ),
                                hintText: 'Username',
                                hintStyle: const TextStyle(fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                             keyboardType: TextInputType.number,
                              controller: number,
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.call,
                                  size: 20,
                                  color: Colors.tealAccent,
                                ),
                                hintText: 'Number',
                                hintStyle: const TextStyle(fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: email,
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Colors.tealAccent,
                                ),
                                hintText: 'E-mail',
                                hintStyle: const TextStyle(fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: password,
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.key,
                                  size: 20,
                                  color: Colors.tealAccent,
                                ),
                                hintText: 'Password',
                                hintStyle: const TextStyle(fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: confirm,
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.key,
                                  size: 20,
                                  color: Colors.tealAccent,
                                ),
                                hintText: 'Confirm Password',
                                hintStyle: const TextStyle(fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 30,
                              width: 160,
                              decoration: const BoxDecoration(
                                color: Colors.tealAccent,
                              ),
                              child: Row(
                                children: const [
                                  Expanded(
                                      child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  )),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      Icons.arrow_right_alt,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              'Don`t have an account ? Sign Up',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
