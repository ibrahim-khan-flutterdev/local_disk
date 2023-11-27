import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PreView extends StatefulWidget {
  const PreView({Key? key}) : super(key: key);

  @override
  State<PreView> createState() => _PreView();
}

class _PreView extends State<PreView> {
  int pageIndex = 0;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var controller = PageController();
    List<Widget> Picture = [
      Container(
        color: Colors.grey,
      ),
      Container(
        color: Colors.grey,
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                  child: Text('diregion',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xFF002E48))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 5, 0, 0),
                  child: Badge(
                    padding: EdgeInsets.all(3),
                    position: BadgePosition.topEnd(top: 5, end: 8),
                    animationDuration: Duration(milliseconds: 300),
                    animationType: BadgeAnimationType.slide,
                    badgeContent: Text(
                      counter.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    child: IconButton(
                      icon: SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/images/vector.png')),
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Container(
                    height: height * 0.025,
                    width: width * 0.052,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFFE6E6E6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 5, 0, 0),
                  child: Text(
                    'Roberto',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                  child: Container(
                    height: height * 0.030,
                    width: width * 0.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF2EBBF2)),
                    child: Center(
                        child: Text(
                      'Admin',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Container(
                height: height * 0.05,
                width: width * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFF7F7F7)),
                child: Center(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 20,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Return',
                          style: TextStyle(
                              color: Color(0xFF000000).withOpacity(0.4)),
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        'You are currently previewing.',
                        style: TextStyle(
                            color: Color(0xFF000000).withOpacity(0.4)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: MaterialButton(
                onPressed: () {},
                child: Container(
                  height: height * 0.05,
                  width: width * 0.30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFD2EDF9),
                  ),
                  child: Center(
                    child: Text(
                      'Grundschule',
                      style: TextStyle(color: Color(0xFF002E48)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                'Kleine Forscher im Kindergarten ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                ' „Struwwelpeter„',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Container(
                    height: height * 0.043,
                    width: width * 0.086,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFFE6E6E6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(9, 23, 15, 0),
                  child: Text(
                    'Kindertagesstätte "Struwwelpeter"',
                    style: TextStyle(fontSize: 13, color: Color(0xFF808080)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: SizedBox(
                height: height * 0.43,
                width: width * 0.83,
                child: PageView.builder(
                    controller: controller,
                    itemCount: Picture.length,
                    onPageChanged: (i) {
                      print('current index=$i');
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Picture[index];
                    }),
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                  controller: controller,
                  count: 2,
                  effect: ScrollingDotsEffect(
                      activeStrokeWidth: 2.6,
                      activeDotScale: 1.3,
                      maxVisibleDots: 5,
                      radius: 8,
                      spacing: 5,
                      dotHeight: 8,
                      dotWidth: 8,
                      dotColor: Color(0xFFE6E6E6),
                      activeDotColor: Color(0xFF000000))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                  "„Geheimnisvolles Erdreich - die Welt unter unseren Füßen“ "
                  "– unter diesem Motto forschten, mikroskopierten, experimentierten"
                  " und buddelten die 15 Vorschulkinder der Kindertagesstätte „Struwwelpeter“"
                  " in Ramstein am Dienstag, 28. Juni. Sie untersuchten alles, was im Erdreich "
                  "so vor sich geht. In einer Regenwurm-Farm konnten die Kinder beobachten, wie"
                  " diese kleinen Würmer die Erde gut durchmischen und im Ameisenhotel wurde sichtbar,"
                  " wie schnell die Ameisen neue Erdgänge bauen können. Fragen wie: „Kann man mit Erde malen?"
                  " Welche Farben haben die tausenden kleinen Steinchen im Sand?“ Diese Fragen konnten die"
                  " Kinder nach zweieinhalb Stunden intensivem tätig sein natürlich beantworten. Aber das Highlight"
                  "des Tages war, dass sie in den Beruf eines Paläontologen schlüpfen konnten und im Sandkasten "
                  "Dinosaurierknochen ausgruben! Abgerundet wurde dieser tolle Tag, als "
                  "jedes der Kinder sein Forscherdiplom erhielt! In diesem Sinne: immer schön neugierig bleiben..."),
            ),
          ],
        ),
      ),
    );
  }
}
