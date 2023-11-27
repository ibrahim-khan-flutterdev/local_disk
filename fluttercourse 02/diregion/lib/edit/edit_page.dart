import 'dart:io';

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _Edit();
}

class _Edit extends State<Edit> {
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

  int counter = 0;
  TextEditingController searchController = TextEditingController();
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text('diregion',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xFF002E48))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 15, 0, 0),
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
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Container(
                    height: height * 0.025,
                    width: width * 0.052,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFFE6E6E6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 15, 0, 0),
                  child: Text(
                    'Roberto',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 15, 0, 0),
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
                    'You are currently editing',
                    style: TextStyle(color: Color(0xFF808080)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
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
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Text(
                        'Search category',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF808080)),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(150, 10, 0, 0),
                  child: SizedBox(
                    height: 15,
                    child: Image.asset(
                      'assets/images/save.png',
                      color: Color(0xFF000000).withOpacity(0.4),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style:
                          TextStyle(color: Color(0xFF000000).withOpacity(0.4)),
                    ),
                  ),
                ),
              ],
            ),
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
                    hintText: 'Grundschule',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Text(
                        'Headline',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF808080)),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(200, 10, 0, 0),
                  child: SizedBox(
                    height: 15,
                    child: Image.asset(
                      'assets/images/save.png',
                      color: Color(0xFF000000).withOpacity(0.4),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Save',
                      style:
                          TextStyle(color: Color(0xFF000000).withOpacity(0.4)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                height: height * 0.2,
                width: width * 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFE5E5E5), width: 2)),
                child: TextFormField(
                  controller: textController,
                  expands: true,
                  maxLines: null,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: (''),
                      hintStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 85)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 20),
              child: Row(
                children: [
                  Text(
                    'Photo Gallery',
                    style: TextStyle(color: Color(0xFF000000)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: SizedBox(
                        height: 15,
                        child: Image.asset('assets/images/save.png',
                            color: Color(0xFF000000).withOpacity(0.4))),
                  ),
                  Text('Save',
                      style: TextStyle(
                        color: Color(0xFF000000).withOpacity(0.4),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Container(
                height: height * 0.15,
                width: width * 1,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Color(0xFF808080).withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(10)),
                child: images.isEmpty
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
                        ],
                      )
                    : SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Row(
                              children: List.generate(
                                images.length,
                                (index) => Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 0),
                                  child: Stack(children: [
                                    Container(
                                      height: height * 0.1,
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xFFF2F2F2),
                                          image: DecorationImage(
                                              image: FileImage(
                                                  File(images[index].path)),
                                              fit: BoxFit.cover)),
                                    ),
                                    Positioned(
                                      left: 60,
                                      child: Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFFE6E6E6)),
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
                                  ]),
                                ),
                              ),
                            ),
                            Container(
                              height: height * 0.1,
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
                          ],
                        ),
                      ),
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
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Text(
                        'Content',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF808080)),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(200, 10, 0, 0),
                  child: SizedBox(
                    height: 15,
                    child: Image.asset(
                      'assets/images/save.png',
                      color: Color(0xFF000000).withOpacity(0.4),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style:
                          TextStyle(color: Color(0xFF000000).withOpacity(0.4)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                height: height * 0.6,
                width: width * 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFE5E5E5), width: 2)),
                child: TextFormField(
                  controller: textController,
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: (''),
                  ),
                ),
              ),
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
          ],
        )),
      ),
    );
  }
}
