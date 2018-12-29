import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/results_page.dart';

class MovieApiProvider {
  static final MovieApiProvider _movieApiProvider =
      MovieApiProvider._internal();

  MovieApiProvider._internal();

  factory MovieApiProvider() => _movieApiProvider;

  Client client = Client();
  final _apiKey = '3eab55a8ace34e37519adfcf19fb0504';

  Future<ResultsPage> fetchPopularMovies() async {
    final response = await client
        .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");

    if (response.statusCode == 200) {
      return ResultsPage.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to fetch movies info');
    }
  }
}
