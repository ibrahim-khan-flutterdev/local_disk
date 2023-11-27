 import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:movie_api/Model/MovieModel.dart';
import 'package:movie_api/Screen/movie_detail_screen.dart';
class MovieSearchScreen extends StatefulWidget{
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
   MovieSearchScreenState createState() => MovieSearchScreenState();

}
class MovieSearchScreenState extends State <MovieSearchScreen>{
  var movieName= TextEditingController();
 late StreamController _streamController;
 late  Stream _stream;
 getAllmovies(String name)async{
   _streamController.add('loading');
   var url='http://www.omdbapi.com/?t=$name&plot=full&apikey=475aff75';
   var response = await http.get(Uri.parse(url));
   if (response.statusCode == 200){
     var jsonData =json.decode(response.body);
     if (jsonData['Response']== 'True'){
       MovieModel model= MovieModel.fromJson(jsonData);
       _streamController.add(model);
   print(response.body);

     }else{
       _streamController.add('not found');}

   }else{
     _streamController.add('went wrong');

   }
 }

  @override
  void initState(){
   _streamController=StreamController();
   _stream=_streamController.stream;
   _streamController.add('empty');
   super .initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MovieSearcher'),
      ),
      body: Column(children: [
        TextField(
          controller: movieName,
          decoration:  const InputDecoration(
            hintText: 'enter a Movie Name',

          ),
        ),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          getAllmovies(movieName.text);

        },
          child: const Text('Search'),),
        Expanded(child:StreamBuilder(
          stream: _stream,
          builder: (context,snapshot){
            if(snapshot.hasData){
              if(snapshot.data=='loading'){
                return Center(child: CircularProgressIndicator(),);

              }else if(snapshot.data=='went wrong'){
                return Text('someting went worng ');
              }else if(snapshot.data== 'not found'){
                return Text('Movie have not found');
              } else if(snapshot.data== 'empty'){
                return Text('please enter a Movie Name');

              }else{
                MovieModel myData=snapshot.data as MovieModel;
                return Column(children: [
                  Text(myData.title!),
                  SizedBox(height: 21,),
                  Image.network(myData.poster!),

                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                      return MovieDetailScreen(model: myData);
                    }
                    ));
                    
                  }, child: Text('MovieDetails'))
                ],);
              }
            }else{
              return Center(child: CircularProgressIndicator(),) ;

            }

          },


        ),
        ),


      ],),
    );

  }

}
