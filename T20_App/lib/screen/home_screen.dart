

import 'package:flutter/material.dart';
import 'package:t20_app/screen/HistoryScreen.dart';
import 'package:t20_app/screen/ScheduleScreen.dart';
import 'package:t20_app/screen/TeamsSreen.dart';
import 'package:t20_app/screen/VenueScreen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/home_itoms_widget.dart';
import '../widgets/my_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'T20 World Cup',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
        //centerTitle: true,
      ),
      drawer: const MyDrawer(),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            children: [
              HomeItemsWidget(
                iconData: Icons.access_time,
                title: 'Schedule',
                onpressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx){ return  const ScheduleScreen();
                  }));
                },
              ),
              HomeItemsWidget(
                iconData: Icons.location_on,
                title: 'Venue',
                onpressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return const VenueScreen();
                  }
                  ));

                },
              ),
              HomeItemsWidget(
                iconData: Icons.history,
                title: 'History',
                onpressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return const HistoryScreen();
                  }
                  ));

                },
              ),
              HomeItemsWidget(
                iconData: Icons.group,
                title: 'Teams',
                onpressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return const TeamsScreen();
                  }
                  ));

                },
              ),
              HomeItemsWidget(
                iconData: Icons.live_tv,
                title: 'LiveScore',
                onpressed: ()async {
                  var _url=' https://www.icc-cricket.com/';
                  if (!await launchUrl(Uri.parse(_url))) throw 'Could not launch $_url';

                }
              ),
              HomeItemsWidget(
                iconData: Icons.video_call,
                title: 'HighLights',
                onpressed: ()async {
                  var _url= 'https://www.icc-cricket.com/video/by-country';
                  if (!await launchUrl(Uri.parse(_url))) throw 'Could not launch $_url';

    }


              ),
            ]),
      ),
    );
  }
}