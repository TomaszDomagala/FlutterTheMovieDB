//import 'package:flutter/material.dart';
//import '../models/item_model.dart';
//import '../blocs/movies_bloc.dart';
//import 'dart:math';
//import 'package:http/http.dart' as http;
//
//class MovieList extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    bloc.fetchAllMovies();
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Popular Movies'),
//      ),
//      body: StreamBuilder(
//        stream: bloc.getMoviesStream,
//        builder: (context, AsyncSnapshot<SimpleMoviesResult> snapshot) {
//          if (snapshot.hasData) {
//            return buildList(snapshot);
//          } else if (snapshot.hasError) {
//            return Text(snapshot.error.toString());
//          }
//          return Center(child: CircularProgressIndicator());
//        },
//      ),
//    );
//  }
//
//  Widget buildList(AsyncSnapshot<SimpleMoviesResult> snapshot) {
//    return GridView.builder(
//        itemCount: snapshot.data.results.length,
//        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
//          crossAxisCount: 2,
//          childAspectRatio: 27 / 40,
//        ),
//        itemBuilder: (BuildContext context, int index) {
//          final imgUrl =
//              'https://image.tmdb.org/t/p/w185${snapshot.data.results[index].poster_path}';
//          return FutureBuilder<http.Response>(
//            future: http.get(imgUrl),
//            builder: (context, snapshot) {
//              switch (snapshot.connectionState) {
//                case ConnectionState.none:
//                case ConnectionState.active:
//                case ConnectionState.waiting:
//                  return Container(
//                    color: Color.fromARGB(255, 255, 255, 255),
//                  );
//                case ConnectionState.done:
//                  if (snapshot.hasError) return Text("error");
//                  return Image(
//                    image: MemoryImage(snapshot.data.bodyBytes),
//                    fit: BoxFit.cover,
//                  );
//              }
//            },
////            child: Container(
////              child: Image.network(
////                imgUrl,
////                fit: BoxFit.cover,
////              ),
////            ),
//          );
//        });
//  }
//}
