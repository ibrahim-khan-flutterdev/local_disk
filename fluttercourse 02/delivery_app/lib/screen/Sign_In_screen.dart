import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: const Text(
          'Delivery',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
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
                    height: 480,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Sing In',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.purple),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: TextField(
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
                                      width: 0,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                    width: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
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
                                    width: 0,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                    width: 0,
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forget Password ?',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              )),
                          const SizedBox(
                            height: 10,
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
                                  'Sign In',
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
                            height: 10,
                          ),
                          const Text(
                            'or Sign in with',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                'https://cdn-icons-png.flaticon.com/512/124/124010.png',
                                height: 30,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.network(
                                'https://www.finsmes.com/wp-content/uploads/2021/07/gympass.png',
                                height: 30,
                              )
                            ],
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
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
