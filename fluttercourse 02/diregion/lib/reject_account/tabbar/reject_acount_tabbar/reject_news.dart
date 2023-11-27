import 'package:flutter/material.dart';

class RejectNews extends StatefulWidget {
  const RejectNews({Key? key}) : super(key: key);

  @override
  State<RejectNews> createState() => _RejectNews();
}

class _RejectNews extends State<RejectNews> {
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
