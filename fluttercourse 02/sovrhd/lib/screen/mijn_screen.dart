import 'package:flutter/material.dart';
import 'package:sovrhd/screen/otvang_screen.dart';

class MijnScreen extends StatelessWidget {
  const MijnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color(0xFF02aa77),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 90, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFffffff).withOpacity(0.25),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 16,
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
                child: SizedBox(
                  width: 129,
                  height: 18,
                  child: Image.asset(
                    'assets/images/image18.png',
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 36,
              ),
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          SingleChildScrollView(
            child: Container(
              height: height * 0.81,
              width: width * 0.99,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                    child: Image.asset(
                      'assets/images/image19.png',
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Image.asset('assets/images/image21.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/image20.png'),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const OtvangScreen();
                      }));
                    },
                    child: Container(
                      height: 51,
                      width: 301,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF02aa77),
                      ),
                      child: Image.asset('assets/images/image22.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
