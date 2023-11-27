
import 'package:flutter/material.dart';
import 'package:movie_api/Model/MovieModel.dart';
class MovieDetailScreen extends StatelessWidget{
  final MovieModel model;


  const MovieDetailScreen({Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title:Text(model.title!),
      ),
      body:Stack(
        children:[ Container(
          child: Image.network(model.poster!,
            height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
        ),
          Column(
            children: [
              Text(model.country!,style: TextStyle(fontSize: 20,color: Colors.white),),
              Text(model.response!),
              Text(model.year!),
              Text(model.actors!),
              Text(model.awards!),
              Text(model.boxOffice!),
              Text(model.director!),
              Text(model.imdbRating!),
              Text(model.genre!),
              Text(model.boxOffice!),
              Text(model.dVD!),
              Text(model.imdbID!),
              Text(model.language!),
              Text(model.imdbVotes!),
              Text(model.title!),
              Text(model.metascore!),
              Text(model.plot!),
              Text(model.production!,style: TextStyle(fontSize: 10),),
              Text(model.rated!),
              Text(model.released!),
              Text(model.runtime!),
              Text(model.website!),
              Text(model.type!),



    ],
          ),

          
      ]),
    );

  }

}