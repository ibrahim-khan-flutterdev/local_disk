import 'package:flutter/cupertino.dart';

class MyString extends StatelessWidget {
  Text title;

  MyString({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return title;
  }
}
