import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'assignment',
            style: TextStyle(fontSize: 30, color: Colors.cyanAccent),
          ),
          backgroundColor: Colors.blue,
          centerTitle: false,
        ),

        body:
        Padding(padding: const EdgeInsets.all(30),
         child:SingleChildScrollView(scrollDirection: Axis.vertical,
          child:SingleChildScrollView(scrollDirection: Axis.horizontal,
          child:
           Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Column(children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border: Border.all(
                      color: Colors.black,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),child: const Text('Settlers Tours', style: TextStyle(fontSize:30 ,color: Colors.black),),

                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 150,
                  width: 150,
                   decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  border: Border.all(
                    color: Colors.black,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),child: const Text('The Royal',style: TextStyle(fontSize:30 ,color: Colors.black),),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,

                    border: Border.all(
                      color: Colors.black,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),child: const Text('Sunshine',style: TextStyle(fontSize:30 ,color: Colors.black),),
                ),
              ],),
              const SizedBox(
                width: 30,
              ),
              Column(children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    border: Border.all(
                      color: Colors.black,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),child: const Text('City Running',style: TextStyle(fontSize:30 ,color: Colors.black),),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    border: Border.all(
                      color: Colors.black,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),child: const Text('Relax And Rewind',style: TextStyle(fontSize:30 ,color: Colors.black),),
                ),
                const SizedBox(
                  height: 30,
                ),

                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.black,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),child: const Text('Choice Travels',style: TextStyle(fontSize:30 ,color: Colors.black),),
                ),
              ],),
            ],


          ),

        ),


        )));


  }
}
