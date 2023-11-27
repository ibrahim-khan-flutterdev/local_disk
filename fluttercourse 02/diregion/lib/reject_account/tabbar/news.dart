import 'package:diregion/Reviewnews/reviewbutton.dart';
import 'package:flutter/material.dart';

class ReviewNews extends StatelessWidget {
  const ReviewNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(270, 15, 0, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.rate_review_outlined,
                    color: Color(0xFF808080).withOpacity(0.4),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ReviewButton();
                        }));
                      },
                      child: Text(
                        'Review',
                        style: TextStyle(
                            color: Color(0xFF808080).withOpacity(0.4)),
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                  child: Container(
                    height: height * 0.10,
                    width: width * 0.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD9D9D9)),
                  ),
                ),
              ],
            ),
            Divider(
              height: 50,
              thickness: 2,
              indent: 10,
              endIndent: 15,
              color: Color(0xFF000000).withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }
}
