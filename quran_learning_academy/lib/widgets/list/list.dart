import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_learning_academy/resource/res.dart';
import 'package:quran_learning_academy/string/string.dart';

class Picture extends StatelessWidget {
  String image;
  Picture({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
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
                        image: AssetImage(image), fit: BoxFit.cover)),
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
        ),
      ),
    );
  }
}
