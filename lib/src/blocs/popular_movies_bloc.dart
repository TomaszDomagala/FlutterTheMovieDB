import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/simple_result.dart';
import '../models/results_page.dart';

class PopularMoviesBloc {
  final Repository _repository = new Repository();
  final BehaviorSubject<List<SimpleResult>> _popularMovies =
      BehaviorSubject<List<SimpleResult>>(seedValue: []);

  Observable<List<SimpleResult>> get getPopularMoviesStream =>
      _popularMovies.stream;

  getPopularMovies() async {
    List<SimpleResult> movies = await _repository.getPopularMovies();
    _popularMovies.sink.add(movies);
  }

  dispose() {
    _popularMovies.close();
  }
}

final popularMoviesBloc = PopularMoviesBloc();