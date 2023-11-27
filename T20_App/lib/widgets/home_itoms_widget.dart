

import 'package:flutter/material.dart';

class HomeItemsWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onpressed;

  const HomeItemsWidget(
      {Key? key, required this.iconData, required this.title, required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(16)),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(iconData, size: 90, color: Colors.white,
              ),
              Text(title, style: const TextStyle(fontSize: 23, color: Colors.white),
              )
            ]),
      ),
    );
  }

}


