import 'package:flutter/material.dart';
import 'package:sovrhd/screen/Inloggen.dart';

class RegistrerenScreen extends StatelessWidget {
  const RegistrerenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0XFF02AA77),
      body: Stack(children: [
        Positioned(
          top: 130,
          left: 20,
          right: 35,
          child: Image.asset(
            'assets/Logo/logo1.png',
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: height * 0.3,
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 280, 0, 0),
            child: Container(
              height: height * 0.95,
              width: width * 0.99,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  Image.asset('assets/images/image5.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/image7.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/images/image6.png'),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return WelKomScreen();
                      }));
                    },
                    child: Image.asset('assets/images/image8.png'),
                  )
                ]),
              ),
            )),
      ]),
    );
  }
}
