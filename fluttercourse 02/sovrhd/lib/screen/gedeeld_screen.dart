import 'package:flutter/material.dart';

import 'naam3_screen.dart';

class GedeeldScreen extends StatelessWidget {
  const GedeeldScreen.Bewijsstukgedeeld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF02aa77),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(75, 100, 50, 0),
            child: Text(
              'Bewijsstuk gedeeld',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: height * 0.8134,
            width: width * 0.9989,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.white,
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: Image.asset('assets/images/image24.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Bewijsstuk gedeeld',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 17,
              ),
              const Text(
                'Je hebt het bewijsstuk succesvol ',
                style: TextStyle(fontSize: 16, color: Color(0xFF616161)),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                ' gedeeld. Je kunt nu dit venser sluiten. ',
                style: TextStyle(fontSize: 16, color: Color(0xFF616161)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 160, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return Naam3Screen();
                    }));
                  },
                  child: Container(
                      height: height * 0.06,
                      width: width * 0.80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF02aa77),
                      ),
                      child: const Center(
                          child: Text(
                        'Scherm sluiten',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFffffff)),
                      ))),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
