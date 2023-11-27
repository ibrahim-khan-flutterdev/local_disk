import 'dart:ui';

import 'package:flutter/material.dart';

import '../models/TeamsModel.dart';
import '../utility/teams_data_store.dart';
class TeamsScreen extends StatelessWidget{
  const TeamsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Teams'),

      ),
      body: FutureBuilder<List<TeamsModel>>(
        future: TeamsDataStore.getAllTeams(context),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData){
            List<TeamsModel> myData=snapshot.data;
            return ListView.builder(     itemCount: myData.length,
              itemBuilder: (  context,index) {
                TeamsModel Teams = snapshot.data[index];
                return Container(
                  height:200 ,
                  width: 300,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.purple,

                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset('assets/flags${Teams.flag}',
                          height: 50,
                          width: 80,
                          fit:  BoxFit.cover,),
                        ),
                     const SizedBox(width: 10,),
                        Text(Teams.fullName,style: const TextStyle(fontSize: 20,color: Colors.white),),
                      ],

                    )


                  ],),
                );
              }  );

          }else{
            return const Center
              (child: CircularProgressIndicator(),

            );
          }

        },),
    );

  }

}


