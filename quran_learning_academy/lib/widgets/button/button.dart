import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_learning_academy/resource/res.dart';

class Button extends StatelessWidget {
  Text title;
  Function onPressed;

  Button({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;

    return TextButton(
        onPressed: () {},
        child: Container(
          height: height * 0.08,
          width: width * 0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: R.colors.textColors, width: 2)),
          child: Center(child: title),
        ));
  }
}
