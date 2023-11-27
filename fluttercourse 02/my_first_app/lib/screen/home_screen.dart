import 'package:flutter/material.dart';
import 'package:my_first_app/screen/dmc_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return DmcScreen();
              }));
            },
            child: const Text('Show Result'),
          ),
        ),);
  }

}
