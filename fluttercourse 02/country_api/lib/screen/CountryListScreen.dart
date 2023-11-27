import 'dart:async';
import 'dart:convert';
import 'package:country_api/screen/country_detail_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart ' as http;
import 'package:country_api/MODEL/country_model.dart';
import 'package:flutter/material.dart';
class CountryListScreen extends StatefulWidget {
  const CountryListScreen({Key? key}) : super(key: key);

  @override
  State<CountryListScreen> createState() => _CountryListScreenState();
}
class _CountryListScreenState extends  State<CountryListScreen> {
 late StreamController streamController;
 late Stream _stream;
 var allCountry=<CountryModel>[];
 void getAllCountry()async{
   streamController.add('loading');
var url='https://restcountries.com/v2/all';
var response= await http.get(Uri.parse(url));
if(response.statusCode==200){
  var jsonData=json.decode(response.body);
  for(var myData in jsonData){
    CountryModel countryModel=CountryModel.fromJSON(myData);
    allCountry.add(countryModel);
    streamController .add(allCountry);
    print(allCountry.length);


  }
}
else{ streamController.add('went wrong');

}
 }
 @override
 void initState() {
   streamController = StreamController();
   _stream= streamController.stream;
   getAllCountry();
// TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countrys'),
      ),
      body: StreamBuilder(
        stream: _stream,
        builder: (context,snapshot){
          if(snapshot.hasData){
    if(snapshot=='loading'){
      return Center
      (child: CircularProgressIndicator(),);
    }else if (snapshot.data=='went wrong'){
      return Text('somethings went wrong');

    }else{
      return ListView.builder(
      itemCount: allCountry.length,
      itemBuilder: (context,indext){
        CountryModel myData= allCountry[indext];
        return Card(
          child: ListTile(
            onTap: (){
              print(myData.name);
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                return CountryDetailScreen(model:myData);
              }));
            },
            leading: CircleAvatar(radius: 30,
              child: ClipOval(child:SvgPicture.network(

                  myData.flag,fit:BoxFit.cover),

              ),
            ),
            title: Text(myData.name),
          ),
        );
    }
    );
    }

    }else{
          return  Center(
            child: CircularProgressIndicator(),);

          }
         },

      ),
    );

  }
}