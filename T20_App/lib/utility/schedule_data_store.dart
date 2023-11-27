import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:t20_app/models/ScheduleModel.dart';
class ScheduleDataStore{
  static  Future<List<ScheduleModel>>getAllMatches(BuildContext context) async {
    var matches = <ScheduleModel>[];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);
    var scheduleData = jsonData['schedule'];
    for (var matchData in scheduleData) {
      ScheduleModel scheduleModel = ScheduleModel.fromJSON(matchData);
      matches.add(scheduleModel);
    }

      return matches;
    }
  }






