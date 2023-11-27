import 'package:flutter/material.dart';
import 'package:sovrhd/screen/homescreen.dart';

class SplceScreen extends StatefulWidget {
  const SplceScreen({Key? key}) : super(key: key);

  @override
  State<SplceScreen> createState() => _SplceScreenState();
}

class _SplceScreenState extends State<SplceScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
                maxWidth: MediaQuery.of(context).size.width,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Image1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Image.asset('assets/Logo/logo1.png'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Expanded(
                      child: Image.asset(
                    'assets/Logo/log2.png',
                  )),
                ],
              )),
        ],
      ),
    ));
  }
}
