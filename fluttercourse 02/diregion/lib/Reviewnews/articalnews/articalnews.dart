import 'package:flutter/material.dart';

class ArticleNews extends StatefulWidget {
  const ArticleNews({Key? key}) : super(key: key);

  @override
  State<ArticleNews> createState() => _ArticleNews();
}

class _ArticleNews extends State<ArticleNews> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Icon(
                  Icons.rate_review_outlined,
                  color: Color(0xFF808080),
                  size: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21, right: 10),
                child: Text(
                  'Review',
                  style: TextStyle(color: Color(0xFF808080)),
                ),
              ),
            ],
          ),
          Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Text(
                    'Kooperation zwischen Zahnarztpraxis ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                  child: Text(
                    ' Wagner und Kita Kinderplanet',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20),
              child: Container(
                height: height * 0.08,
                width: width * 0.17,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFD9D9D9)),
              ),
            ),
          ]),
        ],
      ),
    ));
  }
}
