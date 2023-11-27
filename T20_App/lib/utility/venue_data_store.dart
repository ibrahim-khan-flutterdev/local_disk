import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:t20_app/models/VenueModel.dart';

class VenueDataStore{
  static Future<List<VenueModel>>getAllVenues(BuildContext context)async{
    var venues= <VenueModel>[];
    var assetBundle=DefaultAssetBundle.of(context);
    var data=await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData=json.decode(data);
    var venueData=jsonData['venues'];
    for( var venue in venueData) {
      VenueModel venueModel = VenueModel.FromJSON(venue);
      venues.add(venueModel);
    }
    return venues;

  }
}
