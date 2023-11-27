import 'package:delivery_app/screen/home_page.dart';
import 'package:delivery_app/screen/information_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
        title: const Text('Home Page',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                'https://media.istockphoto.com/vectors/food-delivery-service-by-scooter-with-courier-hand-'
                'holding-mobile-a-vector-id1182653921?b=1&k=20&m=1182653921&s=612x612&w=0&h=ITSZ'
                '_QsPAy_bQfe1vBkdMMHK4hYT71dHNxN1rJz5wo4=',
                fit: BoxFit.cover,
                height: 680,
              ),
              const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'WelCome',
                    style: TextStyle(fontSize: 40, color: Colors.tealAccent),
                  )),
              Center(
                child: Column(children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return const InformationScreen();
                        }));
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const Text(
                    'Enter Your E-mail Address',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.tealAccent,
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const HomePageScreen();
                      }));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const Text(
                    'Create Account',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
