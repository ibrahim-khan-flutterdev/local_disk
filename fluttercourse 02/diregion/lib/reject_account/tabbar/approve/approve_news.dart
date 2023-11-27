import 'package:flutter/material.dart';

class ApproveNews extends StatefulWidget {
  const ApproveNews({Key? key}) : super(key: key);

  @override
  State<ApproveNews> createState() => _ApproveNews();
}

class _ApproveNews extends State<ApproveNews> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [],
      ),
    ));
  }
}
