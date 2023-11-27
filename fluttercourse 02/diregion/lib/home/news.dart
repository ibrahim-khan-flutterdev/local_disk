import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Column(
          children: [
            Row(
              children: [
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
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text(
                        ' Jugendcamp mit prominenter',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text(
                        'Überraschung',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(75, 10, 0, 0),
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
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text(
                        ' Wir sind ausgebildete Dinoexperten',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
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
        )
      ],
    );
  }
}
