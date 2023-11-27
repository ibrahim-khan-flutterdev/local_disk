import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../models/HistoryModel.dart';
class HistoryDataStore{
  static Future<List<HistoryModel>> getAllHistory(BuildContext context) async{
    var history=<HistoryModel>[];
    var assetBundle=DefaultAssetBundle.of(context);
    var data =await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);
    var historyData=jsonData[' history'];
    for ( var history in historyData) {
     HistoryModel historyModel=HistoryModel.fromJSON(historyData) ;
     history.add(historyModel);

    }
    return history;
  }

}




