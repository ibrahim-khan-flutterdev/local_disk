import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'MY FIRST ASSIGNMENT',
          style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'my name is IBRAHIM',
              style: TextStyle(fontSize: 30, color: Colors.cyanAccent),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'my father name is M.QBAL',
              style: TextStyle(fontSize: 30, color: Colors.cyanAccent),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'I HAVE PASS MATRIC IN 2019',
              style: TextStyle(fontSize: 30, color: Colors.cyanAccent),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'my school name (GMSAC)NSRL',
              style: TextStyle(fontSize: 30, color: Colors.cyanAccent),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'I from belong URMAR PAYAN peshawar',
              style: TextStyle(fontSize: 30, color: Colors.cyanAccent),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'my contact number 03411946338L',
              style: TextStyle(fontSize: 30, color: Colors.cyanAccent),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'i will be continue BS in branis institute peshawar ',
              style: TextStyle(fontSize: 30, color: Colors.cyanAccent),
            ),SizedBox(height: 20,),
            Text('CNIC NO 086532467' ,style: TextStyle(fontSize: 30,color: Colors.cyanAccent),
            ),
          ],
        ),
      ),
    );
  }
}
