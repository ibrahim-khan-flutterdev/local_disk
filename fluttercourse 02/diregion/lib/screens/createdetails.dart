import 'package:badges/badges.dart';
import 'package:diregion/create_news/create_news_page.dart';
import 'package:diregion/create_news/review_post_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  State<ContentScreen> createState() => _ContentScreen();
}

class _ContentScreen extends State<ContentScreen> {
  int counter = 0;
  int pageIndex = 0;
  final singlePicker = ImagePicker();
  final multiPicker = ImagePicker();
  List<XFile>? images = [];

  Future getMultiImages() async {
    final List<XFile>? selectedImages = await multiPicker.pickMultiImage();
    setState(() {
      if (selectedImages!.isNotEmpty) {
        images!.addAll(selectedImages);
      } else {
        print('No Images Selected ');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Color(0xFFFAFAFA),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 35, 0, 0),
                child: Text('diregion',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xFF002E48))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 30, 0, 0),
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
                padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                child: Container(
                  height: height * 0.025,
                  width: width * 0.052,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFE6E6E6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 35, 0, 0),
                child: Text(
                  'Roberto',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                child: Container(
                  height: height * 0.030,
                  width: width * 0.20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFFF4F4F)),
                  child: Center(
                      child: Text(
                    'Pending',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: height * 0.080,
            width: width * 10,
            color: Color(0xFFF7F7F7),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  'Content details',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  height: 1,
                  color: Color(0xFF808080),
                  child: Divider(
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
              ),
              Text(
                'Review Post',
                style: TextStyle(color: Color(0xFF808080)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text(
                  'Help',
                  style: TextStyle(color: Color(0xFF808080)),
                ),
              ),
              Container(
                height: height * 0.045,
                width: width * 0.095,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFF2F2F2), width: 2),
                    borderRadius: BorderRadius.circular(100)),
                child: Icon(
                  Icons.question_mark,
                  size: 18,
                  color: Color(0xFF808080),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: PageView(
              onPageChanged: (i) {
                print('Current index=$i');
              },
              children: [
                CreateNewsPage(),
                ReviewNewsPage(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
