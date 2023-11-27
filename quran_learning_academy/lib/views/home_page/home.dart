import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:quran_learning_academy/resource/res.dart';
import 'package:quran_learning_academy/string/string.dart';
import 'package:quran_learning_academy/widgets/TextButton/textbutton.dart';
import 'package:quran_learning_academy/widgets/button/button.dart';
import 'package:quran_learning_academy/widgets/custum_button/custom_button_2.dart';
import 'package:quran_learning_academy/widgets/custum_button/custum_button.dart';
import 'package:quran_learning_academy/widgets/list/picture_list.dart';

import '../../widgets/animated_text/animatedtext.dart';
import '../../widgets/list/list.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

final _key = GlobalKey<ScaffoldState>();

class _Home extends State<Home> {
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0, 0);
 int selectedItem=-1;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _key,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(children: [
                    Positioned(
                      top: 270,
                      left: 90,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  MyString(
                                      title: Text(
                                    'Find a perfect tutor',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 60,
                                        color: R.colors.secondary),
                                  )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Stack(children: [
                                    Container(
                                      height: height * 0.08,
                                      width: width * 0.1,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: Color(0xFF2B697A)),
                                      ),
                                      child: Container(
                                        height: height * 0.08,
                                        width: width * 0.04,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: R.colors.primary,
                                        ),
                                        child: Image.asset(R.images.man1),
                                      ),
                                    ),
                                    Positioned(
                                      left: 40,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 2,
                                              color: Color(0xFF2B697A)),
                                        ),
                                        child: Container(
                                          height: height * 0.08,
                                          width: width * 0.04,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: R.colors.imageBackground,
                                          ),
                                          child: Image.asset(R.images.girl2),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 75,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 2,
                                              color: Color(0xFF2B697A)),
                                        ),
                                        child: Container(
                                          height: height * 0.08,
                                          width: width * 0.04,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: R.colors.primary,
                                          ),
                                          child: Image.asset(R.images.girl1),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                              Row(children: [
                                MyString(
                                    title: Text(
                                  'learn',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60,
                                      color: R.colors.secondary),
                                )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: SizedBox(
                                    height: 120,
                                    child: AnimatedTextKit(
                                      pause: Duration(milliseconds: 1000),
                                      animatedTexts: [
                                        RotateAnimatedText('Quran.',
                                            textStyle: TextStyle(
                                                color: R.colors.primary,
                                                fontSize: 65,
                                                fontWeight: FontWeight.bold)),
                                        RotateAnimatedText('TAJWEED.',
                                            textStyle: TextStyle(
                                                color: R.colors.primary,
                                                fontSize: 65,
                                                fontWeight: FontWeight.bold)),
                                        RotateAnimatedText('TRANSLATION.',
                                            textStyle: TextStyle(
                                                color: R.colors.primary,
                                                fontSize: 65,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                              Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: MyString(
                                    title: Text(
                                  'In in quis ornare ut vestibulum aliquam lacus. Nunc urna'
                                  '\nlacus pulvinar amet condimentum hac. Turpis a mauris',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      height: 2,
                                      fontSize: 20,
                                      color: R.colors.secondary),
                                )),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  CustomButton(
                                    title: Text(
                                      'Join as a Tutor/Student',
                                      style:
                                          TextStyle(color: R.colors.textColors),
                                    ),
                                    onPressed: () {},
                                  ),
                                  CustomButton2(
                                    Image.asset(R.images.heart),
                                    title: Text(
                                      'Donate us',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: R.colors.primary),
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * 0.09,
                                      width: width * 0.10,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: R.colors.iconBackGround,
                                          border: Border.all(
                                            color: R.colors.primary
                                                .withOpacity(0.16),
                                            width: 1,
                                          )),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 50,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 7),
                                              child:
                                                  Image.asset(R.images.female),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8),
                                                child: MyString(
                                                    title: Text(
                                                  'Female Tutors',
                                                  style: TextStyle(
                                                      color: R.colors.primary),
                                                )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12),
                                                child: MyString(
                                                    title: Text(
                                                  '12k',
                                                  style: TextStyle(
                                                      color: R.colors.secondary,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: height * 0.09,
                                      width: width * 0.10,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: R.colors.iconBackGround,
                                          border: Border.all(
                                            color: R.colors.primary
                                                .withOpacity(0.16),
                                            width: 1,
                                          )),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                              height: 50,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 7),
                                                child:
                                                    Image.asset(R.images.boy),
                                              )),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8),
                                                child: MyString(
                                                    title: Text(
                                                  'Male Tutors',
                                                  style: TextStyle(
                                                      color: R.colors.primary),
                                                )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12),
                                                child: MyString(
                                                    title: Text(
                                                  '14.1k',
                                                  style: TextStyle(
                                                      color: R.colors.secondary,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: height * 0.09,
                                      width: width * 0.10,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: R.colors.iconBackGround,
                                          border: Border.all(
                                            color: R.colors.primary
                                                .withOpacity(0.16),
                                            width: 1,
                                          )),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                              height: 50,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 7),
                                                child:
                                                    Image.asset(R.images.hijab),
                                              )),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8),
                                                child: MyString(
                                                    title: Text(
                                                  'Students',
                                                  style: TextStyle(
                                                      color: R.colors.primary),
                                                )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12),
                                                child: MyString(
                                                    title: Text(
                                                  '40k',
                                                  style: TextStyle(
                                                      color: R.colors.secondary,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: height * 0.9,
                        width: width * 0.5,
                        child: Image.asset(
                          R.images.a,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: height * 0.07,
                                width: width * 0.01,
                                color: R.colors.primary,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    // borderRadius: BorderRadius.circular(100),
                                    color: R.colors.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 380),
                            child: Row(
                              children: [
                                AppButton(
                                    title: Text('Home',
                                        style: TextStyle(
                                            color: R.colors.primary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    onPress: () {}),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: AppButton(
                                      title: Text('Become a Tutor',
                                          style: TextStyle(
                                              color: R.colors.secondary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                      onPress: () {}),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: AppButton(
                                      title: Text('Become a student',
                                          style: TextStyle(
                                            color: R.colors.secondary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          )),
                                      onPress: () {}),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: AppButton(
                                      title: Text('Contact us',
                                          style: TextStyle(
                                              color: R.colors.secondary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                      onPress: () {}),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110),
                                  child: AppButton(
                                      title: Text('Sign In',
                                          style: TextStyle(
                                            color: R.colors.secondary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          )),
                                      onPress: () {}),
                                ),
                                SizedBox(
                                  width: width * 0.08,
                                  child: CustomButton(
                                    title: Text(
                                      'Register',
                                      style: TextStyle(
                                          color: R.colors.textColors,
                                          fontSize: 25),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: MyString(
                        title: Text(
                      'Courses we offer',
                      style: TextStyle(
                          color: R.colors.secondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: MyString(
                        title: Text(
                      'In in quis ornare ut vestibulum aliquam lacus. Nunc urna, lacus pulvinar amet',
                      style: TextStyle(color: R.colors.secondary, fontSize: 20),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: MyString(
                        title: Text(
                      'condimentum hac. Turpis a mauris',
                      style: TextStyle(color: R.colors.secondary, fontSize: 20),
                    )),
                  ),
                  SizedBox(
                    height: height * 0.8,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(45, 20, 45, 0),
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 32,
                          mainAxisSpacing: 32,
                          childAspectRatio: 1.7,
                        ),
                        itemCount: imageList.length,
                        itemBuilder: (context, index) {
                          String image = imageList[index];
                          return InkWell(
                              onTap: () {},
                              onHover: (value) {
                                print(value);
                                if (value) {
                                  setState(() {
                                    selectedItem = index;
                                    elevation = 16.0;
                                    scale = 1.0;
                                    // translate = Offset(10, 10);
                                  });
                                } else {
                                  setState(() {
                                    elevation = 1.0;
                                    selectedItem =-1;
                                    scale = 1.0;
                                    translate = Offset(0, 0);
                                  });
                                }
                              },
                              child: Transform.translate(
                                  offset: selectedItem==index?translate:Offset(10,10),
                                  child: Transform.scale(
                                      scale: selectedItem==index?scale:1.0,
                                      child: Material(
                                        elevation: selectedItem==index?elevation:1.0,
                                        child: Column(
                                          children: [Container(
                                            height: height * 0.35,
                                            // width: width * 0.20,
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                                color: R.colors.textColors),
                                            child: Column(children: [
                                              Container(
                                                height: height * 0.25,
                                                // width: width * 0.20,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    image: DecorationImage(
                                                        image: AssetImage(image), fit: BoxFit.cover,scale:4)),
                                              ),
                                              MyString(
                                                  title: Text(
                                                    "Quran Recitaion",
                                                    style: TextStyle(
                                                        color: R.colors.secondary,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 20),
                                                  )),
                                              MyString(
                                                  title: Text(
                                                    'In in quis ornare ut vestibulum aliquam'
                                                        ' \n lacus. Nunc urna, lacus pulvinar amet'
                                                        '\n condimentum hac. Turpis a mauris.',
                                                    style: TextStyle(color: R.colors.secondary.withOpacity(0.4)),
                                                  )),
                                            ],),
                                          ),

                                          ],
                                        )),
                                      )));
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.9,
                    width: width * 03,
                    color: R.colors.background.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: height * 0.8,
                              width: width * 0.4,
                              decoration: BoxDecoration(),
                              child: Image.asset(
                                R.images.girl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 35),
                                  child: MyString(
                                      title: Text(
                                    'Why we?',
                                    style: TextStyle(
                                      color: R.colors.secondary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(
                                    height: height * 0.5,
                                    width: width * 0.4,
                                    child: MyString(
                                        title: Text(
                                      'Hendrerit malesuada leo gravida sagittis amet egestas '
                                      ' quam.Consequat faucibus facilisis tincidunt ornare amet.'
                                      ' Sit est neque, bibendum libero nunc fames. Quis mattis '
                                      ' non semper eu,at id eget.In vel ullamcorper '
                                      ' condimentum senectus at elementum.s'
                                      'Hendrerit malesuada leo gravida sagittis amet egestas'
                                      'quam.',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 27,
                                        height: 2,
                                        color: R.colors.secondary,
                                      ),
                                    )),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: height * 0.06,
                                            width: width * 0.03,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: R.colors.iconBackGround,
                                              border: Border.all(
                                                  color: R.colors.primary
                                                      .withOpacity(0.16),
                                                  width: 1),
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        11, 8, 4, 8),
                                                child: Image.asset(
                                                  R.images.Eas,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: MyString(
                                                title: Text(
                                              'Easy to understand process.',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: R.colors.secondary),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: height * 0.06,
                                            width: width * 0.03,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: R.colors.primary
                                                        .withOpacity(0.16),
                                                    width: 1),
                                                color: R.colors.iconBackGround),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Image.asset(
                                                  R.images.eassy,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: MyString(
                                                title: Text(
                                              'Equal attention to every student.',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: R.colors.secondary),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: height * 0.06,
                                            width: width * 0.03,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: R.colors.primary
                                                        .withOpacity(0.16),
                                                    width: 1),
                                                color: R.colors.iconBackGround),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Image.asset(
                                                  R.images.Easy1,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: MyString(
                                                title: Text(
                                              'Timing that suits everyone.',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: R.colors.secondary),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(children: [
                    Container(
                      height: height * 0.6,
                      width: width * 2,
                      child: Image.asset(
                        R.images.group,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: height * 0.6,
                      width: width * 2,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color(0xFF11270B).withOpacity(0.8),
                        Color(0xFF718355).withOpacity(0.5),
                      ])),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 75),
                          child: Center(
                            child: MyString(
                                title: Text(
                              'Want to become a Tutor?',
                              style: TextStyle(
                                  color: R.colors.textColors,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Center(
                            child: MyString(
                                title: Text(
                              'Diam massa sed fames facilisis. In euismod arcu, mi vel. Nisi sem interdum',
                              style: TextStyle(
                                  color: R.colors.textColors, fontSize: 20),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: Center(
                            child: MyString(
                                title: Text(
                              'ultrices tristique nibh tristique. Vel ac tellus nisl, habitasse laoreet. Habitant',
                              style: TextStyle(
                                  color: R.colors.textColors, fontSize: 20),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: Center(
                            child: MyString(
                                title: Text(
                              'pulvinar in massa commodo. Gravida morbi massa mus urna.',
                              style: TextStyle(
                                  color: R.colors.textColors, fontSize: 20),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 80),
                          child: Button(
                              title: Text(
                                'Sign Up as a Tutor!',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: R.colors.textColors),
                              ),
                              onPressed: () {}),
                        )
                      ],
                    ),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 290),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: height * 0.07,
                                  width: width * 0.01,
                                  color: R.colors.primary,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // borderRadius: BorderRadius.circular(100),
                                      color: R.colors.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: MyString(
                                  title: Text(
                                'Sed tincidunt ultrices porttitor ',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF2B2B2B).withOpacity(0.4),
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            MyString(
                                title: Text(
                              ' maecenas urna.',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF2B2B2B).withOpacity(0.4),
                                  fontWeight: FontWeight.bold),
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            AppButton(
                              onPress: () {},
                              title: Text(
                                'Join Our Family',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color(0xFF11270B)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: AppButton(
                                  title: Text(
                                    'Become a Tutor',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: R.colors.secondary),
                                  ),
                                  onPress: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: AppButton(
                                  title: Text(
                                    'Become a Student',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: R.colors.secondary),
                                  ),
                                  onPress: () {}),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 150),
                        child: Column(
                          children: [
                            AppButton(
                                title: Text(
                                  'Support',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xFF11270B)),
                                ),
                                onPress: () {}),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: AppButton(
                                  title: Text(
                                    'FAQ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: R.colors.secondary),
                                  ),
                                  onPress: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: AppButton(
                                  title: Text(
                                    'Newsroom',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: R.colors.secondary),
                                  ),
                                  onPress: () {}),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 150),
                        child: Column(
                          children: [
                            AppButton(
                                title: Text(
                                  'Contact Us',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xFF11270B)),
                                ),
                                onPress: () {}),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: AppButton(
                                  title: Text(
                                    'About Us',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: R.colors.secondary),
                                  ),
                                  onPress: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: AppButton(
                                  title: Text(
                                    'Contact Us',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: R.colors.secondary),
                                  ),
                                  onPress: () {}),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 40, left: 130, right: 90),
                        child: Column(
                          children: [
                            AppButton(
                                title: Text(
                                  'Our Social Media',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xFF11270B)),
                                ),
                                onPress: () {}),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: AppButton(
                                  title: Text(
                                    'Facebook',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: R.colors.secondary),
                                  ),
                                  onPress: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: AppButton(
                                  title: Text(
                                    'Twitter',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: R.colors.secondary),
                                  ),
                                  onPress: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: AppButton(
                                  title: Text(
                                    'YouTube',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: R.colors.secondary),
                                  ),
                                  onPress: () {}),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Divider(
                      thickness: 2,
                      indent: 50,
                      endIndent: 50,
                      color: Color(0xFF11270B).withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: MyString(
                        title: Text(
                      '© 2022 All Rights Reserved. ',
                    )),
                  )
                ],
              ),
              Positioned(
                left: 870,
                top: 250,
                child: Container(
                    height: height * 0.6,
                    width: width * 0.2,
                    child: SizedBox(
                        height: 200, child: Image.asset(R.images.man))),
              ),

              //put here
            ],
          ),
        ),
      ),
    );
  }
}
