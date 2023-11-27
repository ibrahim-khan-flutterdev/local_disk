import 'package:diregion/edit/edit_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/model.dart';

class ReviewNewsPage extends StatelessWidget {
  ReviewNewsPage({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var controller = PageController();
    List<FAQ> items = [
      FAQ(
          title: "How long will it take for my content to be published?",
          description:
              "If your content gets approved after sending it to us, typically it will take 5-7 days for Diregion to publish your content to our media channels."),
      FAQ(
          title: "How will I be notified when my content gets published?",
          description: ""),
      FAQ(title: "Who can post with Diregion?", description: ""),
      FAQ(
          title: "How muc[h does it cost to publish news with Diregion?",
          description: ""),
    ];
    List<Widget> Picture = [
      Container(
        color: Colors.grey,
      ),
      Container(
        color: Colors.grey,
      ),
    ];

    return Container(
      child: ListView(
        children: [
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Text(
                  ' „Struwwelpeter„',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              SizedBox(
                  height: 15, child: Image.asset('assets/images/edit.png')),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Edit();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                  child: Text('Edit',
                      style: TextStyle(
                        color: Color(0xFF808080),
                      )),
                ),
              )
            ],
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
          Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Color(0xFFE6E6E6),
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF2F2F2)),
                  ),
                ),
              ),
              Positioned(
                top: 14,
                left: 45,
                child: Container(
                  height: height * 0.120,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFE6E6E6)),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.add,
                      color: Color(0xFF808080),
                      size: 30,
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Text('Upload photos'),
                  )),
            ],
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                child: Text(
                  'News category',
                  style: TextStyle(color: Color(0xFF808080)),
                ),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF808080),
                  ),
                  fillColor: Color(0xFFF2F2F2),
                  hintText: 'Search category',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                child: Container(
                  height: height * 0.050,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF002E48), width: 2)),
                  child: Center(
                    child: Text(
                      'Save draft',
                      style: TextStyle(color: Color(0xFF002E48)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                child: Container(
                  height: height * 0.050,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                      color: Color(0xFF002E48),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF002E48), width: 2)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Review',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xFFFFFFFF),
                        )
                      ]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              color: Color(0xFFF7F7F7),
              child: Column(
                  children: List.generate(items.length, (index) {
                var item = items[index];
                return ExpansionTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      item.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
                      child: Text(item.description),
                    )
                  ],
                );
              }))),
        ],
      ),
    );
  }
}
