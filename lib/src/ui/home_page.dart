import 'package:flutter/material.dart';
import 'nice_movie_list.dart';
import '../blocs/popular_movies_bloc.dart';
import '../models/simple_result.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    popularMoviesBloc.getPopularMovies();

    return Scaffold(
        body: StreamBuilder(
            stream: popularMoviesBloc.getPopularMoviesStream,
            initialData: List<SimpleResult>(),
            builder: (context, AsyncSnapshot<List<SimpleResult>> snapshot) {
              return NiceMovieList(movies: snapshot.data);
            }));
  }
}
