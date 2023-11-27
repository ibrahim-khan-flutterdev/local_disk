import 'package:delivery_app/screen/Sign_In_screen.dart';
import 'package:delivery_app/screen/Sign_up%20_Screen.dart';
import 'package:delivery_app/screen/home_page.dart';
import 'package:delivery_app/screen/home_screen.dart';
import 'package:delivery_app/screen/information_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
home: const HomeScreen(),
debugShowCheckedModeBanner: false,

    );
  }
}