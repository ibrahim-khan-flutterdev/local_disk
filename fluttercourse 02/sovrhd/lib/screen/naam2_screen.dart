import 'package:flutter/material.dart';
import 'package:sovrhd/screen/scan_screen.dart';

class Naam2Screen extends StatelessWidget {
  const Naam2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF02aa77),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 90, 0, 0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFffffff)
                          .withOpacity(0.25999999046325684)),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(48, 98, 0, 0),
              child: Text(
                'Naam bewijsstuk',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            )
          ]),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: height * 0.8102,
            width: width * 0.99,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 74,
                    width: 326,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFe7fbf3),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFe7fbf3)),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                            child: Text(
                              'Uitgegeven door',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(24, 0, 0, 10),
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xFF02aa77),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text('Naam Uitgever',
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 167,
                      width: 326,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFFececec), width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0XFFffffff)),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(15, 20, 10, 0),
                        child: Text(
                            'Eerste stukje inhoud/beschrijving bewijsstuk non '
                            'bibendum ipsum finibus. Aenean vel dui orci. Pellentesque habitant '
                            'morbi tristique senectus et netus et malesuada fames ac turpis egestas.'
                            ' Nullam sed ipsum accumsan quam ullamcorper volutpat.'),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 326,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xFFececec), width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0XFFffffff),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Container')),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Inhoud Container')),
                        ),
                        const Divider(
                          thickness: 1,
                          endIndent: 17,
                          indent: 17,
                          color: Color(0xFFf1f1f1),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Container')),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Inhoud Container')),
                        ),
                        const Divider(
                          thickness: 1,
                          endIndent: 17,
                          indent: 17,
                          color: Color(0xFFf1f1f1),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Datum uitgifte')),
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.fromLTRB(13, 0, 0, 5),
                              child: Icon(
                                Icons.calendar_today,
                                size: 10,
                                color: Color(0xFF02aa77),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('4-10-2021')
                          ],
                        ),
                        // SizedBox(
                        //   height: 80,
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                    child: Row(children: [
                      Container(
                        height: 51,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFff7070),
                        ),
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext) {
                                  return AlertDialog(
                                    title: const Text('Conform Delete'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('No')),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('Yes'))
                                    ],
                                  );
                                });
                          },
                          child: const Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuilderContext) {
                            return const ScanScreen();
                          }));
                        },
                        child: Container(
                          height: 51,
                          width: 229,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xFF02aa77),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(39, 7, 0, 0),
                                  child: Text(
                                    'Bewijsstuk delen',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(28, 0, 0, 0),
                                  child: Container(
                                    height: 37,
                                    width: 37,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xFFffffff)
                                            .withOpacity(0.10999999940395355)),
                                    child:
                                        Image.asset('assets/images/shape.png'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
