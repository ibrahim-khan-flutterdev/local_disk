import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../models/TeamsModel.dart';
class TeamsDataStore{
  static Future<List<TeamsModel>>getAllTeams(BuildContext context) async{
    var teams= <TeamsModel>[];
    var assetBundle=DefaultAssetBundle.of (context);
    var data= await assetBundle.loadString('asset/data/ttenty.json');
    var jsonData=json.decode(data);
    var teamData=jsonData['teams'];
    for( var team in teamData){
      TeamsModel teamsModel=TeamsModel.formJSON(teamData);
      teams.add(teamsModel);
    }

  return teams;
  }

}