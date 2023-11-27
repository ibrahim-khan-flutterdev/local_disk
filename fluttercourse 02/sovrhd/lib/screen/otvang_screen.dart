import 'package:flutter/material.dart';
import 'package:sovrhd/screen/homescreen.dart';
import 'package:sovrhd/screen/nam_screen.dart';

class OtvangScreen extends StatelessWidget {
  const OtvangScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF02aa77),
      body: Column(
        children: [
          Row(
            children: [
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
                      size: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 90, 0, 0),
                child: SizedBox(
                    height: 18,
                    width: 160,
                    child: Image.asset('assets/images/image23.png')),
              ),
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          Container(
            height: height * 0.81,
            width: width * 0.99,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                  child: Image.asset('assets/images/image24.png'),
                ),
                const SizedBox(
                  height: 19,
                ),
                Image.asset('assets/images/image25.png'),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/images/image26.png'),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(41, 10, 0, 0),
                      child: Container(
                        height: 31,
                        width: 32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFF02aa77)),
                        child: Image.asset('assets/images/Fill 1.png'),
                      ),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 15, 50, 0),
                          child: Text(
                            "User Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                          child: Text(
                            "Description",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 30,
                        color: Color(0xFF02aa77),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(11, 0, 0, 0),
                          child: Text(
                            'Uitgegeven door',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(28, 5, 0, 0),
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
                            const Text('Naam Uitgever',
                                style: TextStyle(
                                  fontSize: 15,
                                ))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(55, 0, 15, 10),
                          child: Text(
                            'Datum uitgifte',
                          ),
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                              child: Icon(
                                Icons.calendar_today,
                                color: Color(0xFF02aa77),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('4-10-2021')
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text("Are you sure"),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (ctx) {
                                              return const HomeScreen();
                                            }));
                                          },
                                          child: const Text("No")),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("Yes"))
                                    ],
                                  );
                                });
                          },
                          child: Container(
                            height: 51,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFff7070)),
                            child: const Center(
                              child: Text(
                                'Afwijzen',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return NaamScreen();
                            }));
                          },
                          child: Container(
                            height: 51,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFF02aa77)),
                            child: const Center(
                              child: Text(
                                'Toevoegen',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
