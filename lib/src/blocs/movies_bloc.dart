//import '../resources/repository.dart';
//import 'package:rxdart/rxdart.dart';
//import '../models/simple_result.dart';
//import '../models/results_page.dart';
//
//
//class MoviesBloc {
//  final _repository = Repository();
//  final _moviesFetcher = PublishSubject<SimpleMoviesResult>();
//
//  Observable<SimpleMoviesResult> get getMoviesStream => _moviesFetcher.stream;
//
//  fetchAllMovies() async {
//    SimpleMoviesResult itemModel = await _repository.fetchAllMovies();
//    _moviesFetcher.sink.add(itemModel);
//  }
//
//  dispose() {
//    _moviesFetcher.close();
//  }
//}
//
//final bloc = MoviesBloc();
