

import 'package:flutter/material.dart';
import 'package:my_first_app/screen/dmc_screen.dart';
import 'package:my_first_app/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my First App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}

