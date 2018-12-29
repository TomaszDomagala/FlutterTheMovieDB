import 'dart:async';
import 'movie_api_provider.dart';
import '../models/results_page.dart';
import '../models/simple_result.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Repository {
  static final Repository _repository = new Repository._internal();
  final _movieApiProvider = MovieApiProvider();

  Repository._internal();

  factory Repository() => _repository;

  Future<List<SimpleResult>> getPopularMovies() async {
    final prefs = await SharedPreferences.getInstance();

    ResultsPage resultsPage = await _movieApiProvider.fetchPopularMovies();
    return resultsPage.results;
  }
}
