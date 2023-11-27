


import 'package:flutter/material.dart';
import 'package:t20_app/models/VenueModel.dart';
import 'package:t20_app/utility/venue_data_store.dart';


 class VenueScreen extends StatelessWidget{
    const VenueScreen({Key? key}) : super (key:key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Venues',style: TextStyle(color: Colors.white),),
      ),
body: FutureBuilder<List<VenueModel>>(
  future: VenueDataStore.getAllVenues(context),
  builder:  (  context,sanshot) {
    if (sanshot.hasData){
      List<VenueModel>? venueData=sanshot.data;
      return ListView.builder(itemCount: venueData?.length,
          itemBuilder: (context, index) {
     var venue  =sanshot.data![index];
     return Container(
       margin: const EdgeInsets.only(bottom: 10),
       height: 270,
       width: double.infinity,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(16),
         color: Colors.white,
       ),
       child: Column(children: [

         Text('country:${venue.country}',style: const TextStyle(fontSize: 22,color: Colors.black),),
         const SizedBox(height: 8,),
         Text('city:${venue.city}',style: const TextStyle(fontSize: 22,color: Colors.black),),
         Text(venue.stadium,style: const TextStyle(fontSize: 22,color: Colors.black),),

         Expanded(

           child: ClipRRect( borderRadius: BorderRadius.circular(16),
             child: Image.asset(venue.image, width: double.infinity,
             fit:  BoxFit.cover,),
           ),
         ),

       ],),
     );
      });
    }else{
      return const Center(child: CircularProgressIndicator(),);
    }

  }

),
    );
  }}