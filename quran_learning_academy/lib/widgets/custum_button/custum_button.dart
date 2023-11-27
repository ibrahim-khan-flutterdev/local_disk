import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_learning_academy/resource/res.dart';

class CustomButton extends StatelessWidget {
  Text title;
  Function onPressed;

  CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialButton(
        onPressed: () {},
        child: Container(
          height: height * 0.07,
          width: width * 0.18,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: R.colors.primary),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Center(
              child: title,
            ),
          ),
        ));
  }
}
