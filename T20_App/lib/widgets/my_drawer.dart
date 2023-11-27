

import 'package:flutter/material.dart';
import 'package:t20_app/screen/ScheduleScreen.dart';
import 'package:t20_app/screen/TeamsSreen.dart';
import 'package:t20_app/screen/VenueScreen.dart';
import 'package:t20_app/screen/home_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor:Colors.grey ,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.purple),
                child: Column(children: const [
                  Icon(
                    Icons.highlight,
                    color: Colors.white,
                    size: 60,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'T20 World Cup',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),

                ]
                ),
              ),
              ListTile(
                leading:const Icon (Icons.home,color: Colors.white,),
             title: const Text('Home',style: TextStyle(color: Colors.white),),
            onTap: (){
                  Navigator.of(context).pop();
            },
              ),
              ListTile(
                leading:const Icon (Icons.access_time,color: Colors.white,),
                title: const Text('Schedule',style: TextStyle(color: Colors.white),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                    return const ScheduleScreen();
                  }));
                },
              ),
              ListTile(
                leading:const Icon (Icons.location_on,color: Colors.white,),
                title: const Text('Venue',style: TextStyle(color: Colors.white),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                    return const VenueScreen();
                  }));
                },
              ),
              ListTile(
                leading:const Icon (Icons.history,color: Colors.white,),
                title: const Text('History',style: TextStyle(color: Colors.white),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                    return const HomeScreen();
                  }));
                },
              ),
              ListTile(
                leading:const Icon (Icons.group,color: Colors.white,),
                title: const Text('Team',style: TextStyle(color: Colors.white),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                    return const TeamsScreen();
                  }));
                },
              ),
              const Divider(thickness: 2,
              color: Colors.white,),

              ListTile(
    leading:const Icon (Icons.star,color: Colors.white,),
    title: const Text('Rate us',style: TextStyle(color: Colors.white),),
    onTap: (){},)
            ],

          ),

    );
  }
}
