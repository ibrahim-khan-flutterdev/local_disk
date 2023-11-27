import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimated extends StatefulWidget {
  final String label;
  final Color? color;
  final Widget child;

  const MyAnimated({Key? key, required this.label,
    required this.color,
    required this.child,}) : super(key: key);

  @override
  State<MyAnimated> createState() => _MyAnimatedState();
}


class _MyAnimatedState extends State<MyAnimated> {
  @override
  Widget build(BuildContext context) {
    return MyAnimated(
      label: 'Fade',
      color: null,


        child: AnimatedTextKit(
          animatedTexts: [],

        ),

    );
  }
}
