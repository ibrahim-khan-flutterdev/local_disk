import 'package:flutter/material.dart';
import 'package:t20_app/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'T20_App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
