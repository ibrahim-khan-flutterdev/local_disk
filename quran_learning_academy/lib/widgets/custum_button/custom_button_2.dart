import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_learning_academy/resource/res.dart';

class CustomButton2 extends StatelessWidget {
  Text title;
  Function onPressed;
  Color? color;

  CustomButton2(
    Image image, {
    Key? key,
    required this.title,
    required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;
    // images=images??R.images.heart;
    color = color ?? R.colors.primary;
    return TextButton(
        onPressed: () {},
        child: Container(
          height: height * 0.07,
          width: width * 0.12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: color!, width: 2)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 35, child: Image.asset(R.images.heart)),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: title,
                ),
              ],
            ),
          ),
        ));
  }
}
