import 'package:diregion/reject_account/tabbar/review_account.dart';
import 'package:flutter/material.dart';

class Users1 extends StatelessWidget {
  const Users1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ListView(children: [
      Column(children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Container(
              height: height * 0.06,
              width: width * 0.13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFFD9D9D9)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  'Uli Zimmer ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: Text(
                  ' Ortsgemeinde Niedermohr',
                  style: TextStyle(fontSize: 11, color: Color(0xFF808080)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 68, top: 18),
            child: Icon(
              Icons.rate_review_outlined,
              color: Color(0xFF808080),
              size: 15,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 21),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ReviewAccount();
                  }));
                },
                child: Text(
                  'Review',
                  style: TextStyle(color: Color(0xFF808080)),
                ),
              )),
        ]),
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Container(
              height: height * 0.06,
              width: width * 0.13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFFD9D9D9)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  'Uli Zimmer ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: Text(
                  ' Ortsgemeinde Niedermohr',
                  style: TextStyle(fontSize: 11, color: Color(0xFF808080)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 68, top: 18),
            child: Icon(
              Icons.rate_review_outlined,
              color: Color(0xFF808080),
              size: 15,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 21),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ReviewAccount();
                  }));
                },
                child: Text(
                  'Review',
                  style: TextStyle(color: Color(0xFF808080)),
                ),
              )),
        ]),
      ]),
    ]);
  }
}
