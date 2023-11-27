import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../model/model.dart';

class CreateNewsPage extends StatefulWidget {
  CreateNewsPage({Key? key}) : super(key: key);

  @override
  State<CreateNewsPage> createState() => _CreateNewsPageState();
}

class _CreateNewsPageState extends State<CreateNewsPage> {
  TextEditingController textController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  final singlePicker = ImagePicker();

  final multiPicker = ImagePicker();

  List<XFile> images = [];

  Future getMultiImages() async {
    final List<XFile>? selectedImages = await multiPicker.pickMultiImage();
    setState(() {
      if (selectedImages!.isNotEmpty) {
        images.addAll(selectedImages);
      } else {
        print('No Images Selected ');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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

    return Container(
      child: ListView(
        children: [
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
                  'Posting as **Kindertagesstätte "Struwwelpeter"**',
                  style: TextStyle(fontSize: 13, color: Color(0xFF808080)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 10, 0),
            child: Text('Write headline here...',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Container(
              height: height * 0.3,
              width: width * 2,
              child: TextFormField(
                controller: textController,
                expands: true,
                maxLines: null,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write your news article here...'),
              ),
            ),
          ),
          Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Color(0xFFE6E6E6),
          ),
          images.isEmpty
              ? Stack(
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
                          onTap: () {
                            getMultiImages();
                          },
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
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Row(
                        children: List.generate(
                          images.length,
                          (index) => _imageWidget(index),
                        ),
                      ),
                      _picture(),
                    ],
                  ),
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

  Widget _imageWidget(int index) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Stack(
        children: [
          Container(
            height: height * 0.1,
            width: width * 0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFF2F2F2),
                image: DecorationImage(
                    image: FileImage(File(images[index].path)),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            left: 60,
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFE6E6E6)),
              child: InkWell(
                onTap: () {
                  setState(() {
                    images.removeAt(index);
                  });
                },
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _picture() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: width * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFFFE6E6E6)),
      child: InkWell(
        onTap: () {
          getMultiImages();
        },
        child: Icon(
          Icons.add,
          color: Color(0xFF808080),
          size: 30,
        ),
      ),
    );
  }
}
