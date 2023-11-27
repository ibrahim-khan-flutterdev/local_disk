import 'package:delivery_app/screen/Sign_up%20_Screen.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
        title: const Text('Information',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(
                maxHeight: (400),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
            const Text(' Lorem ipsum doloasrr sit amit, consectetur '),
            const Text(
              'adipisicing edit,sed do emus temper incident',
            ),
            const Text(
              'ut labore  et dolore magna aliqua',
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const SignUpScreen();
                }));
              },
              child: Container(
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
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
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
            )
          ],
        ),
      ),
    );
  }
}
