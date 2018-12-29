import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;

import '../models/simple_result.dart';

class NiceMovieList extends StatelessWidget {
  final List<SimpleResult> movies;

  NiceMovieList({this.movies});

  @override
  Widget build(BuildContext context) {
    final hasData = movies.isNotEmpty;
    return CustomScrollView(
      slivers: <Widget>[
        SliverFixedExtentList(
          itemExtent: 300,
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            final movie = hasData ? movies[0] : null;
            return BigMovieCard(
              movie,
            );
          }, childCount: 1),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 27 / 40, crossAxisCount: 2),
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            final movie = hasData ? movies[index + 1] : null;
            return SmallMovieCard(movie);
          }, childCount: movies.length - 1),
        )
      ],
    );
  }
}

class BigMovieCard extends StatelessWidget {
  final SimpleResult movie;

  BigMovieCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: movie != null
          ? FutureBuilder<http.Response>(
              future: http
                  .get('https://image.tmdb.org/t/p/w500${movie.backdrop_path}'),
              builder: (context, snapshot) {

                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.active:
                  case ConnectionState.waiting:
                    return Container(
                      color: Colors.pink,
                    );
                  case ConnectionState.done:
                    return Image(
                      image: MemoryImage(snapshot.data.bodyBytes),
                      fit: BoxFit.cover,
                    );
                }
              },
            )
          : Text("null"),
    );
  }
}

class SmallMovieCard extends StatelessWidget {
  final SimpleResult movie;
  final bool hasData;

  SmallMovieCard(this.movie, {this.hasData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Container(
        color: Colors.green,
        child: FutureBuilder<http.Response>(
          future:
              http.get('https://image.tmdb.org/t/p/w500${movie.poster_path}'),
          builder: (context,snapshot){
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Container(
                  color: Colors.pink,
                );
              case ConnectionState.done:
                return Image(
                  image: MemoryImage(snapshot.data.bodyBytes),
                  fit: BoxFit.cover,
                );
            }
          },
        ),
      ),
    );
  }
}
