

import 'package:country_api/MODEL/country_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CountryDetailScreen extends StatelessWidget{
  final CountryModel model;
  const CountryDetailScreen({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.name),
        
      ),
      body: Column(children:  [
        const Center(child: Text(
          'Country Detail ',
          style:  TextStyle(
              fontSize: 30,color: Colors.blue),
        )
        ),
         SizedBox(height: 20,),
         Card(


        child: SvgPicture.network(model.flag,
   // height: 100,
  //  width: 100,
          fit: BoxFit.cover,
        ),
        )

      ],),
    );
  }

}