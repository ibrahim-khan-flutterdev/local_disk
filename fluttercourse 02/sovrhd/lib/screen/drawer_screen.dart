import 'package:flutter/material.dart';
import 'package:sovrhd/screen/mijn_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key, backgroundColors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 312,
          color: Color(0xFF02aa77),
          child: Stack(
            children: [
              Positioned(
                left: -50,
                top: -35,
                child: SizedBox(
                    height: 154,
                    width: 154,
                    child: Image.asset('assets/images/image15.png')),
              ),
              Positioned(
                left: 60,
                top: -10,
                child: SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.asset(
                    'assets/images/image15.png',
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                left: 25,
                top: 50,
                child: Image.asset(
                  'assets/Logo/logo1.png',
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
            size: 30,
            color: Color(0xFF02aa77),
          ),
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 20, color: Color(0xFF545659)),
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          leading: SizedBox(
            height: 20,
            child: Image.asset(
              'assets/images/image16.png',
              color: Color(0xFF02aa77),
            ),
          ),
          title: Text(
            'Mijn QR code',
            style: TextStyle(fontSize: 20, color: Color(0xFF545659)),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return MijnScreen();
            }));
          },
        ),
        ListTile(
          leading: SizedBox(
            height: 20,
            child: Image.asset(
              'assets/images/image17.png',
              color: Color(0xFF02aa77),
            ),
          ),
          title: Text(
            'Uitloggen',
            style: TextStyle(fontSize: 20, color: Color(0xFF545659)),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
