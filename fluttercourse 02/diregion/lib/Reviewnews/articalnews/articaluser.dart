import 'package:flutter/material.dart';

class ArticleUser extends StatefulWidget {
  const ArticleUser({Key? key}) : super(key: key);

  @override
  State<ArticleUser> createState() => _ArticleUser();
}

class _ArticleUser extends State<ArticleUser> {
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
