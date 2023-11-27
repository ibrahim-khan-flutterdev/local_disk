import 'package:flutter/material.dart';

class Otvang2screen extends StatelessWidget {
  const Otvang2screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var _key = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: _key,
        backgroundColor: const Color(0xFF02aa77),
        body: Column(children: [
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
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 90, 0, 0),
              child: Text(
                'Ontvang bewijsstuk',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 22),
              ),
            )
          ]),
          const SizedBox(
            height: 17,
          ),
          Container(
              height: height * 0.8147,
              width: width * 0.9978,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Image.asset('assets/images/image24.png'),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  const Text(
                    'Ontvang bewijsstuk',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Wil je dit bewijsstuk aan je Pallet ',
                    style: TextStyle(fontSize: 14, color: Color(0xFF616161)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'toevoegen?',
                    style: TextStyle(fontSize: 14, color: Color(0xFF616161)),
                  ),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(41, 40, 0, 0),
                      child: Container(
                        height: 31,
                        width: 32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFF02aa77)),
                        child: Image.asset('assets/images/Fill 1.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 40, 0, 0),
                      child: Column(
                        children: const [
                          Text(
                            'Naam bewijsstuk',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                          Text(
                            'Omschrijving bewijsstuk',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: height * 0.18,
                    width: width * 0.90,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFececec)),
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFffffff)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 16, 10, 0),
                      child: Text(
                        'Eerste stukje inhoud/beschrijving bewijsstuk non bibendum ipsum finibus.'
                        ' Aenean vel dui orci. Pellentesque habitant morbi tristique senectus et'
                        ' netus et malesuada fames ac turpis egestas. Nullam sed ipsum accumsan'
                        ' quam ullamcorper volutpat.',
                        style: TextStyle(color: Color(0xFF231f20)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      height: height * 0.18,
                      width: width * 0.90,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFececec)),
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFffffff)),
                      child: Row(
                        children: [
                          Container(
                            height: height * 0.07,
                            width: width * 0.44,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFff7070)),
                            child: const Center(
                              child: Text(
                                'Afwijzen',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32)),
                                  builder: (context) {
                                    return Container(
                                        height: height * 0.50,
                                        width: width * 0.9999,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            )),
                                        child: Column(children: [
                                          const Divider(
                                            height: 52,
                                            thickness: 2,
                                            color: Colors.grey,
                                            endIndent: 140,
                                            indent: 140,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 20, 0, 0),
                                            child: Container(
                                              height: height * 0.0950,
                                              width: width * 0.20,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color:
                                                      const Color(0xFFffd8d8)),
                                              child: Image.asset(
                                                  'assets/images/warning.png'),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          const Text(
                                            'Bewijsstuk verwijderen?',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          const Text(
                                            'Weet je zeker dat je dit bewijsstuk uit je',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xFF282425)),
                                          ),
                                          const Text(
                                            ' Pallet wilt verwijderen? ',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xFF282425)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                15, 60, 0, 0),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: height * 0.07,
                                                  width: width * 0.44,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: const Color(
                                                          0xFFff7070)),
                                                  child: const Center(
                                                    child: Text(
                                                      'Annuleren',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  height: height * 0.07,
                                                  width: width * 0.44,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: const Color(
                                                          0xFF02aa77)),
                                                  child: const Center(
                                                    child: Text(
                                                      'Toevoegen',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]));
                                  });
                              // _key.currentState!.showBottomSheet((context) =>
                              //
                              // );
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFF02aa77)),
                              child: const Center(
                                child: Text(
                                  'Toevoegen',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ))
        ]));
  }
}
